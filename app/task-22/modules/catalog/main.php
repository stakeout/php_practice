<?php
$res = mysqli_query($link, "SELECT * from goods ORDER BY `id`") or exit(mysqli_error($link));


