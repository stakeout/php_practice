<?php
error_reporting(-1);
header('Content-Type: text/html; charset=utf-8');

if(!isset($_GET['page'])){
    $_GET['page'] = 'main';
    if($_GET['page'] !== 'main'){
        exit();
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <nav class="navigation">
            <span>Навигация:</span>
            <a href="index.php?page=main">главная</a>
            <a href="index.php?page=contacts">контакты</a>
            <a href="index.php?page=services">услуги</a>
        </nav>
        <main>
            <?php include $_GET['page'].'.php'; ?>
        </main>
    </body>
</html>
