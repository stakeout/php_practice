<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title><?php echo @$title; ?></title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link href="/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="page-wrapper">
    <header class="page-header">
        <div class="container wrapper">
        <div class="logo">
            <img src="/img/logo-mini-2.jpg" width="220" height="70" alt="">
        </div>
        <nav>
            <a href="/">Главная</a>
            <a href="/index.php?module=task-1&page=main">Задание 1</a>
            <a href="/index.php?module=task-2&page=main">Задание 2</a>
            <a href="/index.php?module=task-3&page=main">Задание 3</a>
        </nav>
        </div>
    </header>
    <main class="page-content container">
        <?php include $_GET['module'].'/'.$_GET['page'].'.tpl'; ?>
    </main>
    <footer class="page-footer container">
        <?php
            echo '<pre>';
                print_r($_SESSION);
                print_r($_POST);
                print_r($_GET);
                print_r($_COOKIE);
                echo $login;
                echo $pass;
                echo $mail;
            echo '</pre>';
        ?>
    </footer>
</div>
</body>
</html>
