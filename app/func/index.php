<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
    </head>
    <body>
        <?php
        define("START_YEAR", '2011');
        echo 'Copyright: ' . START_YEAR.'<br>';
        echo 'Copyright: ' . START_YEAR . ' - '.NOW.'<br>';
        $var = 'ghgh\'';
        echo (string) $var . '<br>';
        echo date('d-m-Y') . '<br>';
        echo 'Сегодня ' . date('l jS \of F Y h:i:s A') . '<br>';
        echo rand(1,3) . '<br>';
        echo getrandmax() . '<br>';
        echo 'Copyright: ' . START_YEAR . ' - ' . date('Y');

        define("START_YEAR", '2011');
        if( date('Y') !== START_YEAR ){
            echo 'Copyright:  '.START_YEAR.' - '.date('Y');
        }else{
            echo 'Copyright: '.date('Y' );
        }
        echo time();
        ?>
    </body>
</html>
