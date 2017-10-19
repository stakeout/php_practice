<div class="registration-wrapper">
    <form class="registration" action="#" method="post">
            <label>
                <p>Введите ваше имя</p>
                <input type="text" id="name" name="name" value="<?php echo @htmlspecialchars($_POST['name']);?>">
                <span class="error-message"><?php echo (isset($errors['name']) ? $errors['name'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите вашу фамилию</p>
                <input type="text" id="surname" name="surname" value="<?php echo @htmlspecialchars($_POST['surname']);?>">
                <span class="error-message"><?php if(isset($errors['surname'])) { echo $errors['surname']; } ?></span>
            </label>
            <label>
                <p>Введите ваш возраст</p>
                <input type="text" id="age" name="age" value="<?php echo @htmlspecialchars($_POST['age']);?>">
                <span class="error-message"><?php echo (isset($errors['age']) ? $errors['age'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите ваш пароль</p>
                <input type="password" id="password" name="password" value="<?php echo @htmlspecialchars($_POST['password']);?>">
                <span class="error-message"><?php echo (isset($errors['password']) ? $errors['password'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите ваше мыло</p>
                <input type="email" id="email" name="email" value="<?php echo @htmlspecialchars($_POST['email']);?>">
                <span class="error-message"><?php echo (isset($errors['email']) ? $errors['email'] : NULL) ?></span>
            </label>
            <label>
                <p>Введите вашу страну</p>
                <input type="text" id="country" name="country" value="<?php echo @htmlspecialchars($_POST['country']);?>">
                <span class="error-message"><?php echo (isset($errors['country']) ? $errors['country'] : NULL) ?></span>
            </label>
        <input type="submit" name="submit" value="Отправить">
    </form>
    <div class="result">
        <h2>Вывод данных</h2>
        <?php if(mysqli_num_rows($res)){
                    while($row = mysqli_fetch_assoc($res)){
                        echo '<p>'.(int)$row['id'].htmlspecialchars($row['name']);
                    }
                }
        ?>
    </div>
</div>
