<?php
$dir = $file = $fs = array();
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
