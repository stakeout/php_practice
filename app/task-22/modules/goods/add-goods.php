<?php
$res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));

$manufacturer = ['Bosch','Интерскол','Makita','Dewalt','Hitachi'];

if (isset($_POST['add-goods'],$_POST['price'],$_POST['title'],$_POST['description'],
    $_POST['manufacturer'],$_POST['code'],$_POST['image'],$_POST['image-width'],$_POST['image-height'])) {
    $errors = [];
    if (empty($_POST['title'])) {
        $errors['title'] = 'Внесите название товара';
    }
    if (empty($_POST['price'])) {
        $errors['price'] = 'Добавьте цену';
    }
    if (empty($_POST['description'])) {
        $errors['description'] = 'Добавьте описание товара';
    }
    if (empty($_POST['manufacturer'])) {
        $errors['manufacturer'] = 'Кто произвел товар?';
    }
    if (empty($_POST['code'])) {
        $errors['code'] = 'Какой код товара?';
    }
    if (empty($_POST['image'])) {
        $errors['image'] = 'Картинка товара';
    }
    if (empty($_POST['image-width'])) {
        $errors['image-width'] = 'Ширина картинки?';
    }
    if (empty($_POST['image-height'])) {
        $errors['image-height'] = 'Высота картинки?';
    }
    if (!count($errors)) {
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
