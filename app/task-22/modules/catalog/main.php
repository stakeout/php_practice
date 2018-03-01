<?php
$res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));

if(isset($_GET['action']) && $_GET['action'] == 'delete') {
    mysqli_query($link,
    "
        DELETE FROM goods
        WHERE `id` = ".$_GET['id']."
    ");
    $_SESSION['info'] = 'Запись была удалена';
    header('location: /index.php?module=goods');
    exit;
}
if(isset($_SESSION['info'])) {
    $info = $_SESSION['info'];
    unset($_SESSION['info']);
}
