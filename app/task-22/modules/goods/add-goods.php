<?php
$res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));

$manufacturer = ['Bosch','Интерскол','Makita','Dewalt','Hitachi'];

if (isset($_POST['add-goods'],$_POST['price'],$_POST['title'],$_POST['description'],
    $_POST['manufacturer'],$_POST['code'],$_POST['image'],$_POST['image-width'],$_POST['image-height'])) {
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
    if (empty($_POST['manufacturer'])) {
        $error['manufacturer'] = true;
    }
    if (empty($_POST['code'])) {
        $error['code'] = true;
    }
    if (empty($_POST['image'])) {
        $error['image'] = true;
    }
    if (empty($_POST['image-width'])) {
        $error['image-width'] = true;
    }
    if (empty($_POST['image-height'])) {
        $error['image-height'] = true;
    }
    if (!count($error)) {
        mysqli_query($link,
            "
            INSERT INTO goods SET
            `title`          = '" . mysqli_real_escape_string($link, $_POST['title']) . "',
            `price`          = ". (int)$_POST['price'] .",
            `description`    = '" . nl2br(mysqli_real_escape_string($link, $_POST['description'])) ."',
            `manufacturer`   = '". mysqli_real_escape_string($link, $_POST['manufacturer']) ."',
            `code`           = ". (int)$_POST['code'] .",
            `image`          = '". mysqli_real_escape_string($link, $_POST['image']) ."',
            `img-width`    = ". (int)$_POST['image-width'] .",
            `img-height`   = ". (int)$_POST['image-height'] ."
            ") or exit(mysqli_error($link));
        $_SESSION['info'] = 'Запись была добавлена';
        header('location: /index.php?module=goods&page=add-goods');
        exit;
    }
}
