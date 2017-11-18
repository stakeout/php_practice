<?php
if(isset($_GET['logout'])){
    setcookie('auth','true',time()-100,'/');
    header('location: /index.php?module=static');
    exit;
}
