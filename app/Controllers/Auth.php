<?php

namespace App\Controllers;

use App\Models\UserModel;

class Auth extends BaseController
{
    public function register()
    {
        $userModel = new UserModel();

        $data = [
            'username' => $this->request->getPost('username'),
            'nama' => $this->request->getPost('nama'),
            'email'    => $this->request->getPost('email'),
            'password' => password_hash($this->request->getPost('password'), PASSWORD_BCRYPT),
            'role'     => 'user'
        ];

        $userModel->save($data);

        return redirect()->to('/')->with('success', 'Registrasi berhasil, silahkan login');
    }

    public function forgotPassword()
    {
        $email = $this->request->getPost('email');
        $userModel = new UserModel();

        $user = $userModel->where('email', $email)->first();

        if ($user) {
            $token = bin2hex(random_bytes(32));

            $userModel->update($user['id'], [
                'reset_token'   => $token,
                'reset_expired' => date('Y-m-d H:i:s', strtotime('+1 hour'))
            ]);

            $resetLink = base_url("auth/resetPassword/$token");

            $email = \Config\Services::email();
            $email->setFrom(config('Email')->fromEmail, config('Email')->fromName);
            $email->setTo($user['email']);
            $email->setSubject('Reset Password');
            $email->setMailType('html');

            $email->setMessage("
            <h3>Reset Password</h3>
            <p>Halo <b>{$user['nama']}</b>,</p>
            <p>Klik link berikut untuk reset password:</p>
            <p><a href='{$resetLink}'>{$resetLink}</a></p>
            <p><small>Link berlaku 1 jam</small></p>
        ");

            if (!$email->send()) {
                dd($email->printDebugger(['headers']));
            }
        }

        return redirect()->back()
            ->with('success', 'Jika email terdaftar, link reset telah dikirim.');
    }


    public function resetPassword($token)
    {
        $userModel = new UserModel();

        $user = $userModel
            ->where('reset_token', $token)
            ->where('reset_expired >=', date('Y-m-d H:i:s'))
            ->first();

        if (!$user) {
            return redirect()->to('/')
                ->with('error', 'Link reset tidak valid atau sudah kadaluarsa.');
        }

        return view('auth/reset_password', [
            'token' => $token
        ]);
    }


    // public function updatePassword()
    // {
    //     $token = $this->request->getPost('token');
    //     $password = $this->request->getPost('password');

    //     $userModel = new UserModel();
    //     $user = $userModel->where('reset_token', $token)->first();

    //     if ($user) {
    //         $userModel->update($user['id'], ['password' => password_hash($password, PASSWORD_BCRYPT), 'reset_token' => null]);
    //         return redirect()->to('/')->with('success', 'Password berhasil diubah.');
    //     }

    //     return redirect()->to('/')->with('error', 'Invalid token.');
    // }

    public function processReset()
    {
        $token   = $this->request->getPost('token');
        $pass    = $this->request->getPost('password');
        $confirm = $this->request->getPost('confirm_password');

        if ($pass !== $confirm) {
            return redirect()->back()->with('error', 'Password tidak sama.');
        }

        $userModel = new UserModel();

        $user = $userModel
            ->where('reset_token', $token)
            ->where('reset_expired >=', date('Y-m-d H:i:s'))
            ->first();

        if (!$user) {
            return redirect()->to('/')
                ->with('error', 'Token tidak valid atau kadaluarsa.');
        }

        $userModel->update($user['id'], [
            'password'       => password_hash($pass, PASSWORD_DEFAULT),
            'reset_token'    => null,
            'reset_expired'  => null
        ]);

        return redirect()->to('/')
            ->with('success', 'Password berhasil direset. Silakan login.');
    }


    public function login()
    {
        $session = session();
        $userModel = new UserModel();

        $emailOrUsername = $this->request->getPost('email');
        $password        = $this->request->getPost('password');

        $user = $userModel->where('email', $emailOrUsername)
            ->orWhere('username', $emailOrUsername)
            ->first();

        if ($user && password_verify($password, $user['password'])) {
            $session->set([
                'user_id'   => $user['id'],
                'username'  => $user['username'],
                'nama'  => $user['nama'],
                'email'  => $user['email'],
                'role'      => $user['role'],
                'logged_in' => true
            ]);

            // Redirect sesuai role
            if ($user['role'] === 'admin') {
                return redirect()->to(base_url('home'));
            } else {
                return redirect()->to(base_url('/'));
            }
        } else {
            // Jika gagal login
            $session->setFlashdata('error', 'Username atau password salah!');
            return redirect()->to(base_url('/'));
        }
    }

    public function logout()
    {
        session()->destroy();
        return redirect()->to('/');
    }
}
