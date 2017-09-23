<?php
ini_set('display_errors','on');
error_reporting(-1);
header('Content-Type: text/html; charset=utf-8');
session_start();
if(!isset($_SESSION['player'])){
    $_SESSION['player'] = 7;
    $_SESSION['comp'] = 7;
    $_SESSION['msg'] = '';
}
if(isset($_GET['number'])){
    if(!empty((int)$_GET['number'])){
        if($_GET['number'] >= 1  && $_GET['number'] <= 3 ){
            $pos = rand(1,3);
            $damage = rand(1,4);
            if($_GET['number'] == $pos){
                $_SESSION['comp'] -= $damage;
                $_SESSION['msg'] = 'вы нанесли компу '.$damage;
            }else {
                $_SESSION['player'] -= $damage;
                $_SESSION['msg'] = 'комп жахнул вам '.$damage;
            }
        }else{
            $_SESSION['msg'] = 'Число должно быть от 1 до 3';
        }
    }else{
        $_SESSION['msg'] = 'Введите число!';
    }
}
switch($_SESSION){
    case $_SESSION['player'] <= 0:
        $_SESSION['msg'] = 'Победил компьютер!';
        $_GET['result'] = 'loose';
        header('location: ./gameover.php');
        exit();
        break;
    case $_SESSION['comp'] <= 0:
        $_SESSION['msg'] = 'Победил человек!';
        $_GET['result'] = 'loose';
        header('location: ./gameover.php');
        exit();
        break;
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

        <div class="container">
            <form class="form" action="" method="get">
                <label for="number">
                    <p>Напишите число от 1 до 3</p>
                    <input type="text" name="number" id="number" value="" autocomplete="off" autofocus>
                </label>
                <input type="submit" name="submit" value="Отправить">
            </form>
            <div class="players">
                <?php
                if(isset($_SESSION['player'],$_SESSION['comp'])){
                    echo '<div class="player elf '.(isset($_GET['result']) && $_SESSION['player'] <= 0 ? $_GET['result'] : '').'"><span class=\'hp\'>игрок - '.$_SESSION['player'].' хп</span><div class=\'image\'></div></div>';
                    echo '<div class="player orc '.(isset($_GET['result']) && $_SESSION['comp'] <= 0 ? $_GET['result'] : '').'"><span class=\'hp\'>комп - '.$_SESSION['comp'].' хп</span><div class=\'image\'></div></div>';
                }
                ?>
            </div>
            <div class="result">
                <?php echo $_SESSION['msg']; ?>
            </div>
        </div>
        <?php
        echo '<pre>';
        print_r($_SESSION);
        print_r($_GET);
        echo '</pre>';
         ?>
    </body>
</html>
