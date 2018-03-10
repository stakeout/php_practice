<?php
if(isset($_GET['asc'])) {
    $res = mysqli_query($link, "SELECT * FROM goods ORDER BY `price`") or exit(mysqli_error($link));
}else if (isset($_GET['desc'])) {
    $res = mysqli_query($link, "SELECT * FROM goods ORDER BY `price` DESC") or exit(mysqli_error($link));
}else {
    $res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));
}

