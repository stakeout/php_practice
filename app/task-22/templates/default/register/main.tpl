 <div class="registration-wrapper">
    <form class="authorization" action="#" method="post">
        <p>login: admin, pass: 123</p>
        <label>
            <span>Введите ваше имя</span>
            <input type="text" id="name" name="name" value="<?php echo @htmlspecialchars($_POST['name']);?>">
            <span class="error-message"><?php echo (isset($errors['name']) ? $errors['name'] : NULL) ?></span>
        </label>
        <label>
            <span>Введите ваш пароль</span>
            <input type="password" id="password" name="password" value="<?php echo @htmlspecialchars($_POST['password']);?>">
            <span class="error-message"><?php echo (isset($errors['password']) ? $errors['password'] : NULL) ?></span>
        </label>
        <input type="submit" name="auth-submit" value="Войти">
    </form>
</div>
