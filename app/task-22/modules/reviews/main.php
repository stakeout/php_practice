<?php
if (isset($_POST['reviews-submit'],$_POST['name'], $_POST['town'], $_POST['message'])) {
    $error = [];
    if (empty($_POST['name'])) {
        $error['name'] = true;
    }
    if (empty($_POST['town'])) {
        $error['town'] = true;
    }
    if (empty($_POST['message'])) {
        $error['message'] = true;
    }
    if (!count($error)) {
        mysqli_query($link,
            "
            INSERT INTO reviews SET
            `name` = '" . mysqli_real_escape_string($link, $_POST['name']) . "',
            `town` = '" . mysqli_real_escape_string($link, $_POST['town']) . "',
            `message` = '" . nl2br(mysqli_real_escape_string($link, $_POST['message'])) ."',
            `time_created` = NOW()
            ") or exit(mysqli_error($link));
        header('location: /index.php?module=reviews&page=success');
        exit;
    }
}
// облако комментов
$res = mysqli_query($link, "SELECT * from reviews ORDER BY `id`") or exit(mysqli_error($link));
