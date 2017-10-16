<?php
if (!isset($_SESSION['player'])) {
    $_SESSION['player'] = 7;
    $_SESSION['comp'] = 7;
    $_SESSION['msg'] = '';
}
if(isset($_POST['fight'])) {
    if (isset($_POST['number'])) {
        if (!empty((int)$_POST['number'])) {
            if ($_POST['number'] >= 1 && $_POST['number'] <= 3) {
                $pos = rand(1, 3);
                $damage = rand(1, 4);
                if ($_POST['number'] == $pos) {
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
    header('Location: /index.php?module=task-2&page=main');
    exit;
}
switch ($_SESSION) {
    case $_SESSION['player'] <= 0:
        $_SESSION['msg'] = 'Победил компьютер!';
        header('location: /index.php?module=task-2&page=gameover');
        exit;
        break;
    case $_SESSION['comp'] <= 0:
        $_SESSION['msg'] = 'Победил человек!';
        header('location: /index.php?module=task-2&page=gameover');
        exit;
        break;
}
