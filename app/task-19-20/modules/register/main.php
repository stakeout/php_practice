<?php
if (isset($_POST['name'],$_POST['surname'], $_POST['age'], $_POST['password'], $_POST['email'], $_POST['country'])) {
    $errors = [];
    if (empty($_POST['name'])) {
        $errors['name'] = 'Напишите ваше имя';
    }
    if (empty($_POST['surname'])) {
        $errors['surname'] = 'Напишите вашу фамилию';
    }
    if (empty($_POST['age'])) {
        $errors['age'] = 'Напишите ваш возраст';
    }
    if (empty($_POST['password'])) {
        $errors['password'] = 'Напишите ваш пароль';
    }
    if (empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = 'Напишите ваш email';
    }
    if (empty($_POST['country'])) {
        $errors['country'] = 'Напишите откуда вы';
    }
    if (!count($errors)) {
        mysqli_query($link,
            "
            INSERT INTO users SET
            `name` = '" . mysqli_real_escape_string($link, $_POST['name']) . "',
            `surname` = '" . mysqli_real_escape_string($link, $_POST['surname']) . "',
            `age` = " . (int)$_POST['age'] . ",
            `password` = " . (int)$_POST['password'] . ",
            `country` = '" . mysqli_real_escape_string($link, $_POST['country']) . "',
            `mail` = '" . mysqli_real_escape_string($link, $_POST['email']) . "'
            ") or exit(mysqli_error($link));
        mysqli_close($link);
        header('location: /index.php?module=register&page=success');
        exit;
    }
}
    $res = mysqli_query($link, "SELECT * FROM `users` ORDER BY `id` limit 15") or exit(mysqli_error($link));

