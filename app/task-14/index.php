<?php
error_reporting(-1); // что значит -1?
header('Content-Type: text/html; charset=utf-8');

function calculator($num1, $num2, $operation) {
    $num1 = (int) $num1;
    $num2 = (int) $num2;
    switch ($operation) {
        case 'minus':
            return $num1 - $num2;
            break; // до этих break выполнение не дойдет же, они не нужны вообще здесь?
        case 'devide':
            if ($num2 == 0) {
                return 'На ноль делить нельзя!';
            }
            return $num1 / $num2;
            break;
        case 'multi':
            return $num1 * $num2;
            break;
        default:
            return $num1 + $num2;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
    </head>
    <body>
        <div class='result' style='margin-bottom: 20px;'>
            <?php
            if (isset($_POST['num1'], $_POST['num2'], $_POST['operation'])) { // почему, если я передаю только 1 параметр, это условие проходит проверку?
                if(!empty($_POST['num1']) && !empty($_POST['num2'])){
                    echo calculator($_POST['num1'], $_POST['num2'], $_POST['operation']);
                }else {
                    echo 'Передайте все нужные данные!';
                }
            }
            ?>
        </div>
        <form action="" method='POST'>
            <input type="text" name='num1' value=''>
            <input type="text" name='num2' value=''>
            <input type="submit" name='submit' value='Отправить'>
            <div class="controls" style='margin-top: 30px'>
                <label style='display: block;'>плюс
                    <input type="radio" name='operation' value='plus' checked>
                </label><br>
                <label style='display: block;'>минус
                    <input type="radio" name='operation' value='minus'>
                </label><br>
                <label style='display: block;'>делить
                    <input type="radio" name='operation' value='devide'>
                </label><br>
                <label style='display: block;'>умножить
                    <input type="radio" name='operation' value='multi'>
                </label>
            </div>
        </form>
    </body>
</html>
