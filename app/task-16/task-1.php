<?php
ini_set('display_errors','on');
error_reporting(-1);
header('Content-Type: text/html; charset=utf-8');

if(isset($_POST['login'],$_POST['password'],$_POST['email'])){
    if(!empty($_POST['login']) && !empty($_POST['password']) && !empty($_POST['email'])){// проверку на конкретные данные не проводил пока здесь
        if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
            setcookie('access','1', time()+3600, '/');
            header("Location: task-1.php"); // сделал, чтобы страница обновлялась после введения верных данных
            exit();
        }else{
            echo 'Введите правильный email';
        }
    }else{
        echo 'Введите все данные';
    }
}else{
    echo 'не переданы данные';
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>16 урок</title>
        <link rel="stylesheet" href="/css/main.css">
    </head>
    <body>
        <form class="form" action="" method="post">
            <div class="hello">
                <?php
                if(isset($_COOKIE['access']) && $_COOKIE['access'] == 1){
                    echo '<p>Привет админ!</p>';
                }else{
                    echo 'Привет пользователь';
                }
                ?>
            </div>
            <label for="login">
                <p>Логин</p>
                <input type="text" name="login" id="login" value="">
            </label>
            <label for="password">
                <p>Пароль</p>
                <input type="password" name="password" id="password" value="">
            </label>
            <label for="email">
                <p>Почта</p>
                <input type="text" name="email" id="email" value="">
            </label>
            <input type="submit" name="submit" value="Отправить">
            <input type="reset" name="reset" value="Очистить">
            <?php
                if(isset($_COOKIE['access']) && $_COOKIE['access'] == 1){
                    echo '<input type="submit" name="exit" value="Выйти">';
                }
            ?>
        </form>
    </body>
</html>
