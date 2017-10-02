<?php
if (isset($_POST['login'], $_POST['password'], $_POST['email'])) {
    if (!empty($_POST['login']) && !empty($_POST['password']) && !empty($_POST['email'])) {// проверку на конкретные данные не проводил пока здесь
        if (filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            setcookie('access', '1', time() + 3600, '/');
            header("Location: task-1.php"); // сделал, чтобы страница обновлялась после введения верных данных
            exit();
        } else {
            echo 'Введите правильный email';
        }
    } else {
        echo 'Введите все данные';
    }
} else {
    echo 'не переданы данные'; // что лучше делать здесь, если данные не были переданы? нужна ли вообще данная проверка
}
