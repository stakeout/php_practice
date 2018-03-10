<?php
$res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));

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
