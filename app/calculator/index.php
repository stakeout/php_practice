<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
<?php
  // if(count($_POST) > 0){
  //   echo 'POST:<br>';
  //   echo '<pre>'.print_r($_POST).'</pre>';
  // }
  // function calculator(){
  //   $res = '';
  //   if(isset($_POST['num1']) && isset($_POST['num2']) && isset($_POST['operation'])){
  //     $num1 = $_POST['num1'];
  //     $num2 = $_POST['num2'];
  //     $operation = $_POST['operation'];
  //     switch($operation){
  //       case 'minus':
  //         $res = $num1 - $num2;
  //         break;
  //       case 'devide':
  //         $res = $num1 / $num2;
  //         break;
  //       case 'multi':
  //         $res = $num1 * $num2;
  //         break;
  //       default:
  //         $res = $num1 + $num2;
  //     }
  //     return $res;
  //   }else{
  //     return $res = "Передайте все нужные данные!";
  //   }
  // }
  function calculator($num1, $num2, $oper = '+'){
        $res = '';
        $pattern = '/[-*\/+]/';
        if(!preg_match ($pattern, $oper)){
          echo 'Вы ввели не верный знак операции, допустимы лишь +, -, /, *';
        }else{
          switch($oper){
            case '-':
            $res = $num1 - $num2;
            break;
            case '/':
            $res = $num1 / $num2;
            break;
            case '*':
            $res = $num1 * $num2;
            break;
            default:
            $res = $num1 + $num2;
          }
        }
          return $res;
  }
  calculator(2,8, '0')
?>
  <div class='result' style='margin-bottom: 20px;'>Результат операции:</div>
  <form action="" method='POST'>
    <input type="text" name='num1' value=''>
    <input type="text" name='num2' value=''>
    <input type="submit" name='submit' value='Отправить'>
    <!-- <div class="controls" style='margin-top: 30px'>
      <label style='display: block;'>плюс
        <input type="radio" name='operation' value='plus'>
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
    </div> -->

  </form>
</body>
</html>