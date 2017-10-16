<ul class="file-system">
    <?php
        foreach($dir as $val){
            echo '<li class="dir">[<a href="/index.php?module=task-3&link='.(!empty($link) ? $link.'/'.$val : $val).'">'.$val.'</a>]</li>';
        }
        foreach($file as $val){
            echo '<li class="file">'.$val.'</li>';
        }
    ?>
</ul>

