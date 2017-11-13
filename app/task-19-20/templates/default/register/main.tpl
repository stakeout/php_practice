 <div class="registration-wrapper">
    <form class="registration" action="#" method="post">
        <label>
            <span>Введите ваше имя</span>
            <input type="text" id="name" name="name" value="<?php echo @htmlspecialchars($_POST['name']);?>">
            <span class="error-message"><?php echo (isset($errors['name']) ? $errors['name'] : NULL) ?></span>
        </label>
        <label>
            <span>Введите вашу фамилию</span>
            <input type="text" id="surname" name="surname" value="<?php echo @htmlspecialchars($_POST['surname']);?>">
            <span class="error-message"><?php echo (isset($errors['name']) ? $errors['name'] : NULL) ?></span>
        </label>
        <label>
            <span>Введите ваш возраст</span>
            <input type="text" id="age" name="age" value="<?php echo @htmlspecialchars($_POST['age']);?>">
            <span class="error-message"><?php echo (isset($errors['age']) ? $errors['age'] : NULL) ?></span>
        </label>
        <label>
            <span>Введите ваш пароль</span>
            <input type="password" id="password" name="password" value="<?php echo @htmlspecialchars($_POST['password']);?>">
            <span class="error-message"><?php echo (isset($errors['password']) ? $errors['password'] : NULL) ?></span>
        </label>
        <label>
            <span>Введите ваше мыло</span>
            <input type="email" id="email" name="email" value="<?php echo @htmlspecialchars($_POST['email']);?>">
            <span class="error-message"><?php echo (isset($errors['email']) ? $errors['email'] : NULL) ?></span>
        </label>
        <label>
            <span>Введите вашу страну</span>
            <input type="text" id="country" name="country" value="<?php echo @htmlspecialchars($_POST['country']);?>">
            <span class="error-message"><?php echo (isset($errors['country']) ? $errors['country'] : NULL) ?></span>
        </label>
        <input type="submit" name="submit" value="Отправить">
    </form>
    <div class="result">
        <h2>Вывод данных</h2>
        <p>Всего в базе: <?php echo $number; ?> cтрок</p>
        <?php
            if(mysqli_num_rows($res)){
                while($row = mysqli_fetch_assoc($res)){
                    echo '<p>'.(int)$row['id'].' '.htmlspecialchars($row['name']).'</p>';
            }
        }
        ?>
        <div class="paginator">
        <?php
            for($i = 1; $i <= $page_count; ++$i) {
               echo '<a href="/index.php?module=register&page=$i">'.$i.'</a>';
            }
        ?>
        </div>
    </div>
</div>
