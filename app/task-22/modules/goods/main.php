<?php
if (isset($_POST['add_goods'],$_POST['price'],$_POST['title'],$_POST['description'],$_POST['cathegory'],$_POST['code'])) {
    $error = [];
    if (empty($_POST['title'])) {
        $error['title'] = true;
    }
    if (empty($_POST['price'])) {
        $error['price'] = true;
    }
    if (empty($_POST['description'])) {
        $error['description'] = true;
    }
    if (empty($_POST['cathegory'])) {
        $error['cathegory'] = true;
    }
    if (empty($_POST['code'])) {
        $error['code'] = true;
    }
    if (!count($error)) {
        mysqli_query($link,
            "
            INSERT INTO goods SET
            `title`       = '" . mysqli_real_escape_string($link, $_POST['title']) . "',
            `price`       = ". (int)$_POST['price'] .",
            `description` = '" . nl2br(mysqli_real_escape_string($link, $_POST['description'])) ."',
            `cathegory`   = ". (int)$_POST['cathegory'] .",
            `code`        = ". (int)$_POST['code'] ."
            ") or exit(mysqli_error($link));
        $_SESSION['info'] = 'Запись была добавлена';
        header('location: /index.php?module=goods');
        exit;
    }
}
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
$res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));
