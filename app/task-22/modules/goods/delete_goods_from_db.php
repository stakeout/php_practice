<?php
// delete one row
if(isset($_GET['action']) && $_GET['action'] == 'delete') {
    mysqli_query($link,
    "
    DELETE FROM goods
    WHERE `id` = ".(int)$_GET['id']."
    ") or exit(mysqli_error($link));
    $_SESSION['info'] = 'Запись была удалена';
    header('Location: /index.php?module=goods');
    exit;
}

