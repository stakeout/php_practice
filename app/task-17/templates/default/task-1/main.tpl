<form class="form" action="" method="post">
    <div class="hello">
        <?php
           if(isset($_COOKIE['access']) && $_COOKIE['access'] == 1){
                $msg = 'Привет админ';
            }
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
    <?php
        if(isset($_COOKIE['access'])){
            echo '<a href="/index.php?module=task-1&page=main&logout=1" class="form-btn" name="logout">Выход</a>';
        }else{
            echo '<input type="submit" class="form-btn" name="submit" value="Войти">';
        }
    ?>
</form>
