<?php
ini_set('display_errors','on');
error_reporting(-1);
header('Content-Type: text/html; charset=utf-8');
$dir = $file = $fs = array();
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>16 урок</title>
        <link rel="stylesheet" href="/css/main.css">
    </head>
    <body>
        <div class="container">
                <ul>
                    <?php
                        $link = (isset($_GET['link']) ? './'.$_GET['link'] : '');
                        $fs = scandir(!empty($link) ? $link : '.');
                        foreach($fs as $v){
                            if(!in_array($v,array('.','..'))){
                                if(is_dir(!empty($link) ? $link.'/'.$v : './'.$v)){
                                    $dir[] = $v;
                                }else{
                                    $file[] = $v;
                                }
                            }
                        }
                        foreach($dir as $val){
                            echo '<li><a href="/fs.php?link='.(!empty($link) ? $link.'/'.$val : $val).'">'.$val.'</a></li>';
                        }
                        foreach($file as $val){
                            echo '<li><a href="/fs.php?link='.(!empty($link) ? $link.'/'.$val : $val).'">'.$val.'</a></li>';
                        }
                    ?>
                    </ul>
            </div>
        </body>
    </html>
