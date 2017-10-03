<ul>
    <?php
        foreach($dir as $val){
            echo '<li><a href="/index.php?module=task-3&page=main?link='.(!empty($link) ? $link.'/'.$val : $val).'">'.$val.'</a></li>';
        }
        foreach($file as $val){
            echo '<li><a href="/index.php?module=task-3&page=main?link='.(!empty($link) ? $link.'/'.$val : $val).'">'.$val.'</a></li>';
        }
    ?>
</ul>

