<?php
error_reporting(-1);
ini_set('display_errors','on');
header('Content-Type: text/html; charset=utf-8');
session_start();

//Конфиг проекта
include_once './config.php';
include_once './variables.php';
include_once './functions.php';
//Коннект к БД
$link = mysqli_connect(DB_LOCAL,DB_LOGIN,DB_PASSWORD,DB_NAME);
mysqli_set_charset($link,'utf8');
//router
include './modules/'.$_GET['module'].'/'.$_GET['page'].'.php';
include './templates/'.DEFAULT_SKIN.'/index.tpl';
