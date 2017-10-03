<div class="fight-wrapper">
    <form class="form" action="" method="get">
        <label for="number">
            <p>Напишите число от 1 до 3</p>
            <input type="text" name="number" id="number" value="" autocomplete="off" autofocus>
        </label>
        <input type="submit" name="fight" value="Отправить">
    </form>
    <div class="players">
        <?php
                if(isset($_SESSION['player'],$_SESSION['comp'])){
                    echo '<div class="player elf
                        '.(isset($_GET['result']) && $_SESSION['player'] <= 0 ? $_GET['result'] : '').'">
                    <span class=\'hp\'>игрок - '.$_SESSION['player'].' хп</span>
                    <div class=\'image\'></div></div>';
                    echo '<div class="player orc '.(isset($_GET['result']) && $_SESSION['comp'] <= 0 ? $_GET['result'] : '').'"><span class=\'hp\'>комп - '.$_SESSION['comp'].' хп</span><div class=\'image\'></div></div>';
                }
        ?>
    </div>
    <div class="result">
        <?php echo $_SESSION['msg']; ?>
    </div>
</div>
