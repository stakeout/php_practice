<form class="form" action="" method="post">
    <div class="hello">
        <?php
           if(!empty($msg) || !empty($alert)){
               echo '<p>'.$msg.$alert.'</p>';
           }
        ?>
    </div>
    <label for="login">
        <p>Логин</p>
        <input type="text" name="login" id="login"
               value="<?php echo (!empty($_SESSION['login']) ? $_SESSION['login'] : '') ?>">
    </label>
    <label for="password">
        <p>Пароль</p>
        <input type="password" name="password" id="password"
               value="<?php echo (!empty($_SESSION['pass']) ? $_SESSION['pass'] : ''); ?>">
    </label>
    <label for="email">
        <p>Почта</p>
        <input type="text" name="email" id="email"
               value="<?php echo (!empty($_SESSION['mail']) ? $_SESSION['mail'] : ''); ?>">
    </label>
    <input type="submit" class="form-btn" name="submit" value="Войти">
</form>
