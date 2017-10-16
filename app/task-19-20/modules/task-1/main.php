<?php
if(isset($_POST['login'],$_POST['password'],$_POST['email'])){
    if(!empty($_POST['login']) && !empty($_POST['password']) && !empty($_POST['email'])){
        if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
            $_SESSION['user'] = $_POST['login'];
            setcookie('access','1', time()+3600, '/');
            header("Location: /index.php?module=task-1&page=login");
            exit;
        }else{
            $alert =  'Введите правильный email';
        }
    }else{
        $alert =  'Введите все данные';
    }
}

