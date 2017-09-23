<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<?php
function table_parser($row, $col){
  $i = 1;
  while($i <= $row){
    echo '<tr class=\'table-row\'>';
    for($j = 1; $j <= $col; $j++){
      if($i== 1 && $j == 1){
        echo '<td class=\'table-data green\'>'.$j.'</td>';
      }elseif($i == 2 && ($j > 1 && $j < 4)){
        echo '<td class=\'table-data red\'>'.$j.'</td>';
      }elseif($i == 4){
        echo '<td class=\'table-data yellow\'>'.$j.'</td>';
      }else{
        echo '<td class=\'table-data\'>'.$j.'</td>';
      }
    }
    echo '</tr>';
    ++$i;
  }
}
?>
<body>
  <table class='table'>
    <?php echo table_parser(5,5); ?>
  </table>
</body>
</html>