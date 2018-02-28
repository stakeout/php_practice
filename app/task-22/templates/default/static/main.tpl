        <form action="#" method="post">
        <p class="login-data">Форма добавления товаров</p>
        <p>
            <span class="error"><?php echo (isset($errors['title']) ? $errors['title'] : null); ?></span>
            <input type="text" name="title" value="<?php echo $_POST['title'] ?>" placeholder="Название товара">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['code']) ? $errors['code'] : null); ?></span>
            <input type="text" name="code" value="<?php echo $_POST['code'] ?>" placeholder="Код товара">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['manufacturer']) ? $errors['manufacturer'] : null); ?></span>
            <?php echo select_parse($manufacturer, 'manufacturer', 'Выберите производителя'); ?>
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['image']) ? $errors['image'] : null); ?></span>
            <input type="text" name="image"  value="<?php echo $_POST['image'] ?>" placeholder="Название картинки">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['image-width']) ? $errors['image-width'] : null); ?></span>
            <input type="text" name="image-width" value="<?php echo $_POST['image-width'] ?>" placeholder="Ширина картинки">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['image-height']) ? $errors['image-height'] : null); ?></span>
            <input type="text" name="image-height" value="<?php echo $_POST['image-width'] ?>" placeholder="Высота картинки">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['price']) ? $errors['price'] : null); ?></span>
            <input type="text" name="price" value="<?php echo $_POST['price'] ?>" placeholder="Цена товара">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['description']) ? $errors['description'] : null); ?></span>
            <textarea name="description" placeholder="Описание товара"><?php echo htmlspecialchars(isset($_POST['description']) ? $_POST['description'] : null);?></textarea>
        </p>
        <input type="submit" class="btn" name="add-goods" value="Добавить товар">
    </form>

