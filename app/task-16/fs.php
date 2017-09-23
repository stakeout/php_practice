<?php
error_reporting(-1);
header('Content-Type: text/html; charset=utf-8');
$dir = $file = $fs = array();
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>16 урок</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <div class="container">
                <ul>
                    <?php
                        $link = (isset($_GET['link']) ? './'.$_GET['link'] : '');
                        $fs = scandir(!empty($link) ? $link : '.');
                        foreach($fs as $v){
                            if(!in_array($v,array('.','..'))){
                                if(is_dir(!empty($link) ? $link.'/'.$v : $v)){
                                    $dir[] = $v;
                                }else{
                                    $file[] = $v;
                                }
                            }
                        }
                        for($i = 0; $i < count($dir); $i++){
                            echo '<li><a href="/fs.php?link='.(!empty($link) ? $link.'/'.$dir[$i] : $dir[$i]).'">'.$dir[$i].'</a></li>';
                        }
                        for($i = 0; $i < count($file); $i++){
                            echo '<li>'.$file[$i].'</li>';
                        }
                    ?>
                    </ul>
            </div>
        </body>
    </html>
