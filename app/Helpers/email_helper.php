<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Config\Mail;

function send_email_api(
    string $to,
    string $subject,
    string $html
): bool {
    $config = new Mail();

    if (
        empty($config->gmailEmail) ||
        empty($config->gmailAppPassword)
    ) {
        log_message('error', 'MAIL CONFIG NOT FOUND');
        return false;
    }

    $mail = new PHPMailer(true);

    try {
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        $mail->Username   = $config->gmailEmail;
        $mail->Password   = $config->gmailAppPassword;
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port       = 587;

        $mail->setFrom($config->gmailEmail, $config->fromName);
        $mail->addAddress($to);

        $mail->isHTML(true);
        $mail->Subject = $subject;
        $mail->Body    = $html;

        $mail->send();
        return true;
    } catch (Exception $e) {
        log_message('error', 'PHPMailer Error: ' . $mail->ErrorInfo);
        return false;
    }
}
