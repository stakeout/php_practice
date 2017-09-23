<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
<?php
  function calculator($num1, $num2, $oper = '+'){
    $num1 = (int)$num1;
    $num2 = (int)$num2;
    // $pattern = '/[-*\/+]/';
    if(!in_array($oper,['+','-','*','/'])){
      return  'Вы ввели не верный знак операции, допустимы лишь +, -, /, *';
    }else{
      switch($oper){
        case '-':
          return $num1 - $num2;
        break;
        case '/':
          return $num1 / $num2;
        break;
        case '*':
          return $num1 * $num2;
        break;
        default:
          return $num1 + $num2;
      }
    }
  }
?>
  <div class='result' style='margin-bottom: 20px;'>Результат операции: <?php echo calculator(3, 8, '*') ?></div>
</body>
</html>
