<?php
$res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));

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
// mass delete
if(isset($_POST['mass-delete'])) {
    foreach($_POST['ids'] as $key => $value) {
        $key = (int)$value;
    }
    $ids = implode(',',$_POST['ids']);
    mysqli_query($link,
    "
    DELETE FROM goods
    WHERE `id` IN (".$ids.")
    ") or exit(mysqli_error($link));
    $_SESSION['info'] = 'Записи были удалены';
    header('Location: /index.php?module=goods');
    exit;
}
