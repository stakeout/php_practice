<form class="form" action="" method="post">
    <div class="hello">
        <?php
                if(isset($_COOKIE['access']) && $_COOKIE['access'] == 1){
                    echo '<p>Привет админ!</p>';
        }else{
        echo 'Привет пользователь';
        }
        ?>
    </div>
    <label for="login">
        <p>Логин</p>
        <input type="text" name="login" id="login" value="<?php echo (isset($_POST['login']) ? $_POST['login'] : '');?>">
    </label>
    <label for="password">
        <p>Пароль</p>
        <input type="password" name="password" id="password" value="<?php echo (isset($_POST['password']) ? $_POST['password'] : '');?>">
    </label>
    <label for="email">
        <p>Почта</p>
        <input type="text" name="email" id="email" value="<?php echo(isset($_POST['email']) ? $_POST['email'] : '');?>">
    </label>
    <input type="submit" name="submit" value="Отправить">
    <input type="reset" name="reset" value="Очистить">
    <?php
                if(isset($_COOKIE['access']) && $_COOKIE['access'] == 1){
                    echo '<input type="submit" name="exit" value="Выйти">';
    }
    ?>
</form>
