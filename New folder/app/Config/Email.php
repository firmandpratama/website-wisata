<?php

namespace Config;

use CodeIgniter\Config\BaseConfig;

class Email extends BaseConfig
{
    public string $fromEmail = 'developerhandal768@gmail.com';
    public string $fromName  = 'Wisataku Official';

    public string $protocol = 'smtp';

    public string $SMTPHost = 'smtp.gmail.com';
    public string $SMTPUser = 'developerhandal768@gmail.com';
    public string $SMTPPass = 'gfcv cqkc gomw fqkp';
    public int    $SMTPPort = 587;
    public string $SMTPCrypto = 'tls';

    public int $SMTPTimeout = 10;
    public bool $SMTPKeepAlive = false;

    public string $mailType = 'html';
    public string $charset  = 'UTF-8';

    public string $CRLF = "\r\n";
    public string $newline = "\r\n";

    public bool $wordWrap = true;
}
