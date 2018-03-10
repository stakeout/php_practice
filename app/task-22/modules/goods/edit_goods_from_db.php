<?php
$manufacturer = ['Bosch','Интерскол','Makita','Dewalt','Hitachi'];
//editing
if(isset($_GET['action']) && $_GET['action'] == 'edit') {
    $edit = mysqli_query($link,
    "
    SELECT * FROM goods
    WHERE `id` = ".(int)$_GET['id']."
    LIMIT 1
    ") or exit(mysqli_error($link));
    $_SESSION['info'] = 'Редактируем запись';
    $edit_row = mysqli_fetch_assoc($edit);    //беру из базы облако данных для редактирования
}
//updating data
if (isset($_POST['edit-goods'],$_POST['price'],$_POST['title'],$_POST['description'],
    $_POST['manufacturer'],$_POST['code'],$_POST['image'],$_POST['image-width'],$_POST['image-height'],$_POST['available'])) {
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
            UPDATE goods SET
            `title`          = '" . mysqli_real_escape_string($link, trim($_POST['title'])) . "',
            `price`          = ". (int)$_POST['price'] .",
            `description`    = '" . nl2br(mysqli_real_escape_string($link, trim($_POST['description']))) ."',
            `manufacturer`   = '". mysqli_real_escape_string($link, trim($_POST['manufacturer'])) ."',
            `code`           = ". (int)$_POST['code'] .",
            `image`          = '". mysqli_real_escape_string($link, trim($_POST['image'])) ."',
            `img-width`      = ". (int)$_POST['image-width'] .",
            `img-height`     = ". (int)$_POST['image-height'] .",
            `available`      = ". (int)$_POST['available'] ."
            WHERE `id` = ".(int)$_GET['id']."
            ") or exit(mysqli_error($link));
        $_SESSION['info'] = 'Запись была отредактирована';
        header('Location: /index.php?module=goods');
    exit;
    }
}
///////////////////////
// при редактировании строка WHERE `id` = ".(int)$_GET['id']." обязательна!!!
//////////////////////
// передаю значение для value внутрь функции вывода select
if(isset($_POST['manufacturer'])) {
    $selected_value = $_POST['manufacturer'];
}elseif(isset($_GET['action']) && $_GET['action'] == 'edit') {
    $selected_value = $edit_row['manufacturer'];
}else {
    $selected_value = null;
}
// if(isset($_SESSION['info'])) {
//     $info = $_SESSION['info'];
//     unset($_SESSION['info']);
// }
