<?php
if (!isset($_SESSION['player'])) {
    $_SESSION['player'] = 7;
    $_SESSION['comp'] = 7;
    $_SESSION['msg'] = '';
}
if (isset($_GET['number'])) {
    if (!empty((int)$_GET['number'])) {
        if ($_GET['number'] >= 1 && $_GET['number'] <= 3) {
            $pos = rand(1, 3);
            $damage = rand(1, 4);
            if ($_GET['number'] == $pos) {
                $_SESSION['comp'] -= $damage;
                $_SESSION['msg'] = 'вы нанесли компу ' . $damage;
            } else {
                $_SESSION['player'] -= $damage;
                $_SESSION['msg'] = 'комп жахнул вам ' . $damage;
            }
        } else {
            $_SESSION['msg'] = 'Число должно быть от 1 до 3';
        }
    } else {
        $_SESSION['msg'] = 'Введите число!';
    }
}
switch ($_SESSION) {
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
