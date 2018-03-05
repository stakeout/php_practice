<?php
$msg = $alert = $login = $pass = $mail = '';
$modules = array('errors','main','goods','catalog','authorization');
if(!isset($_GET['module'])) {
    $_GET['module'] = 'main';
}elseif(!in_array($_GET['module'],$modules)) {
    header("Location: /index.php?module=errors&page=404");
    exit();
}
if(!isset($_GET['page'])){
    $_GET['page'] = 'main';
}
// так как авторизация пока не в отдельном модуле, вынес ее сюда, как и logout


if(isset($_GET['logout'])) {
    setcookie('auth','true',time()-100,'/');
    header('location: /index.php');
    exit;
}
