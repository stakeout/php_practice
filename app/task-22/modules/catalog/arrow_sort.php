<?php
if(isset($_GET['asc'])) {
    $res = mysqli_query($link, "SELECT * FROM goods ORDER BY `price`") or exit(mysqli_error($link));
}
