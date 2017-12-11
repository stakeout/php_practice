<?php
if(isset($_POST['entrance'],$_POST['login'],$_POST['password'])) {
    $errors = [];
    if(empty($_POST['login'])) {
        $errors['login'] = 'Заполните имя';
    }
    if(empty($_POST['password'])) {
        $errors['password'] = 'Заполните пароль';
    }
    if (!count($errors)) {
        if($_POST['login'] == 'admin' && $_POST['password'] == 123){
            setcookie('auth','true', time()+3600, '/');
            header('location: /index.php');
            exit;
        }
    }
}
