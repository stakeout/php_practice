<?php
if(isset($_GET['logout'])){
    setcookie('access','123',time()-3600,'/');
    header("Location: /index.php?module=task-1&page=logout");
    exit;
};

