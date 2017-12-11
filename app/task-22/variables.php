<?php
$msg = $alert = $login = $pass = $mail = $count = '';
$goods_list = ['Игры','Фильмы','Книги'];
$pages = array('main','404','logout','gameover');
$modules = array('reviews','errors','static','register','goods');
if(!isset($_GET['module'])) {
    $_GET['module'] = 'static';
} elseif(!in_array($_GET['module'],$modules)) {
    header("Location: /index.php?module=errors&page=404");
    exit();
}
if(!isset($_GET['page'])){
    $_GET['page'] = 'main';
}

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

if(isset($_GET['logout'])) {
    setcookie('auth','true',time()-100,'/');
    header('location: /index.php');
    exit;
}
