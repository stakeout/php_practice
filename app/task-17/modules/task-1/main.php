<?php
if(isset($_POST['login'],$_POST['password'],$_POST['email'])){
    if(!empty($_POST['login']) && !empty($_POST['password']) && !empty($_POST['email'])){
        if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
            $_SESSION['login'] = $_POST['login']; // чтобы каждый раз не вводить данные, временно
            $_SESSION['pass'] = $_POST['password'];
            $_SESSION['mail'] = $_POST['email'];
            setcookie('access','1', time()+3600, '/');
            header("Location: /index.php?module=task-1&page=main");
            exit;
        }else{
            $alert =  'Введите правильный email';
        }
    }else{
        $alert =  'Введите все данные';
    }
}
if(isset($_GET['logout'])){
    setcookie('access','123',time()-3600,'/');
    header("Location: /index.php?module=task-1&page=main");
    exit();
};
