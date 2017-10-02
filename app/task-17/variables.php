<?php
$msg = $alert = $login = $pass = $mail = '';
$pages = array('main','task-1','task-2','task-3','404');
$modules = array('task-1','task-2','task-3','errors','static');
if(!isset($_GET['module'])) {
    $_GET['module'] = 'static';
} elseif(!in_array($_GET['module'],$modules)) {
    header("Location: /index.php?module=errors&page=404");
    exit();
}
if(!isset($_GET['page'])){
    $_GET['page'] = 'main';
} elseif(!in_array($_GET['page'],$pages)){
    header("Location: /index.php?module=errors&page=404");
    exit();
}
