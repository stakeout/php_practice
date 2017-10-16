<div class="registration-wrapper">
    <form class="registration" action="#" method="post">
            <label>
                <p>Введите ваше имя</p>
                <input type="text" id="name" name="name">
                <span class="error-message"><?php echo (isset($errors['name']) ? $errors['name'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите вашу фамилию</p>
                <input type="text" id="surname" name="surname">
                <span class="error-message"><?php if(isset($errors['surname'])) { echo $errors['surname']; } ?></span>
            </label>
            <label>
                <p>Введите ваш возраст</p>
                <input type="text" id="age" name="age">
                <span class="error-message"><?php echo (isset($errors['age']) ? $errors['age'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите ваш пароль</p>
                <input type="password" id="password" name="password">
                <span class="error-message"><?php echo (isset($errors['password']) ? $errors['password'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите ваше мыло</p>
                <input type="email" id="email" name="email">
                <span class="error-message"><?php echo (isset($errors['email']) ? $errors['email'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите вашу страну</p>
                <input type="text" id="country" name="country">
                <span class="error-message"><?php echo (isset($errors['country']) ? $errors['country'] : NULL) ?></span>
            </label>
        <input type="submit" name="submit" value="Отправить">
    </form>
    <div class="result">
        <h2>Вывод данных</h2>
    </div>
</div>
