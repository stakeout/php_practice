<?php
ini_set('display_errors','on');
error_reporting(-1);
header('Content-Type: text/html; charset=utf-8');
session_start();

//Конфиг проекта
include_once './config.php';
include_once './variables.php';
include_once './modules/task-1/main.php';

//router
include './modules/'.$_GET['module'].'/'.$_GET['page'].'.php';
include './templates/'.DEFAULT_SKIN.'/index.tpl';


