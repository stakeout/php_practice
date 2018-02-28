<?php
$res = mysqli_query($link, "SELECT * from reviews ORDER BY `id`") or exit(mysqli_error($link));
