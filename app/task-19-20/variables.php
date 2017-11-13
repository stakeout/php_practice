<?php
$msg = $alert = $login = $pass = $mail = $count = '';
$pages = array('main','404','logout','gameover');
$modules = array('reviews','errors','static','register');
if(!isset($_GET['module'])) {
    $_GET['module'] = 'static';
} elseif(!in_array($_GET['module'],$modules)) {
    header("Location: /index.php?module=errors&page=404");
    exit();
}
if(!isset($_GET['page'])){
    $_GET['page'] = 'main';
}
