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
    if (empty($_POST['email']) || !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = 'Напишите ваш email';
    }
    if (empty($_POST['country'])) {
        $errors['country'] = 'Напишите откуда вы';
    }
    if(!count($errors)){
//            mysqli_query();
    }
}
