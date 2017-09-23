<?php
error_reporting(-1);
header('Content-Type: text/html; charset=utf-8');
session_start();
echo '<pre>';
print_r($_SESSION);
echo '</pre>';
echo $_SESSION['msg'];
session_destroy();
?>
<html>
    <head>
        <meta charset="utf-8">
        <title>16 урок</title>
    </head>
    <body>
        <a href='task-2.php'>Начать игру заново</a>
    </body>
</html>
