<?php
if (isset($_POST['add-goods'],$_POST['price'], $_POST['title'], $_POST['description'], $_POST['cathegory'], $_POST['code'])) {
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
            `title` = '" . mysqli_real_escape_string($link, $_POST['title']) . "',
            `price` = '" . mysqli_real_escape_string($link, $_POST['price']) . "',
            `description` = '" . nl2br(mysqli_real_escape_string($link, $_POST['description'])) ."',
            `cathegory` = '" . mysqli_real_escape_string($link, $_POST['cathegory']) . "',
            `code` = ".(int)$_POST['code']."
            ") or exit(mysqli_error($link));
        header('location: /index.php?module=reviews&page=success');
        exit;
    }
}
// $res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));
