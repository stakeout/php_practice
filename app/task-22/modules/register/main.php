<?php
if (isset($_POST['name'],$_POST['password'],$_POST['auth-submit'])) {
    $errors = [];
    if (empty($_POST['name'])) {
        $errors['name'] = 'Напишите ваше имя';
    }
    if (empty($_POST['password'])) {
        $errors['password'] = 'Напишите ваш пароль';
    }
    if (!count($errors)) {
        if($_POST['name'] == 'admin' && $_POST['password'] == 123){
            setcookie('auth','true', time()+3600, '/');
            header('location: /index.php?module=register&page=success');
            exit;
        }
    }
}

$limit = 5;
$GET['page'] = 1;
$count = ($_GET['page'] - 1) * $limit;
$page_count = ceil($count / $limit);
$output = $count.','.$limit;
$res = mysqli_query($link, "SELECT * FROM users ORDER BY id limit 5") or exit(mysqli_error($link));
$number = mysqli_num_rows($res);
