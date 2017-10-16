<?php
    setcookie('access','1',time()-3600,'/');
    header('location: /index.php');
    exit;
