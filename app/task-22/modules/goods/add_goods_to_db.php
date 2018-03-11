<?php
$manufacturer = ['Bosch','Интерскол','Makita','Dewalt','Hitachi','Logitech'];

if (isset($_POST['add-goods'],$_POST['price'],$_POST['title'],$_POST['description'],
    $_POST['manufacturer'],$_POST['code'],$_POST['image'],$_POST['image-width'],$_POST['image-height'])) {
    $errors = [];
    $available = (isset($_POST['available']) ? 1 : 0);
    if (empty($_POST['title'])) {
        $errors['title'] = 'Внесите название товара';
    }
    if (empty($_POST['price'])) {
        $errors['price'] = 'Добавьте цену';
    }
    if (empty($_POST['description'])) {
        $errors['description'] = 'Добавьте описание товара';
    }
    if ($_POST['manufacturer'] == 'Выберите производителя') {
        $errors['manufacturer'] = 'Кто произвел товар?';
    }
    if (empty($_POST['code'])) {
        $errors['code'] = 'Какой код товара?';
    }
    if (empty($_POST['image'])) {
        $errors['image'] = 'Картинка товара?';
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
            `title`          = '" . mysqli_real_escape_string($link, trim($_POST['title'])) . "',
            `price`          = ". (int)$_POST['price'] .",
            `description`    = '" . nl2br(mysqli_real_escape_string($link, trim($_POST['description']))) ."',
            `manufacturer`   = '". mysqli_real_escape_string($link, trim($_POST['manufacturer'])) ."',
            `code`           = ". (int)$_POST['code'] .",
            `image`          = '". mysqli_real_escape_string($link, trim($_POST['image'])) ."',
            `img-width`    = ". (int)$_POST['image-width'] .",
            `img-height`   = ". (int)$_POST['image-height'] .",
            `available`   = ". (int)$available ."
            ") or exit(mysqli_error($link));
        $_SESSION['info'] = 'Новая запись добавлена';
        header('location: /index.php?module=goods&page=add_goods_to_db');
        exit;
    }
}
if(isset($_POST['manufacturer'])) {
    $selected_value = $_POST['manufacturer'];
}elseif(isset($_GET['action']) && $_GET['action'] == 'edit') {
    $selected_value = $edit_row['manufacturer'];
}else {
    $selected_value = null;
}
