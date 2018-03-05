<div class="popup entrance">
    <form action="#" method="post">
        <p class="login-data">Логин: admin, pass: 123</p>
        <p>
            <span class="error"><?php echo (isset($errors['login']) ? $errors['login'] : null); ?></span>
            <input type="text" name="login" value="admin" placeholder="Введите логин">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['password']) ? $errors['password'] : null); ?></span>
            <input type="password" name="password" value="123" placeholder="Введите пароль">
        </p>
        <input type="submit" class="btn" name="entrance" value="Войти">
    </form>
</div>
