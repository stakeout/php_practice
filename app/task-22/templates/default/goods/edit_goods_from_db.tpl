<form class="add-goods" action="#" method="post">
    <p class="login-data">Форма добавления товаров</p>
    <p>
        <span class="error"><?php echo (isset($errors['title']) ? $errors['title'] : null); ?></span>
        <input type="text" name="title" value="<?php echo htmlspecialchars(isset($_GET['action']) && $_GET['action'] == 'edit' ? $edit_row['title'] : (isset($_POST['title']) ? $_POST['title'] : null));?>" placeholder="Название товара">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['code']) ? $errors['code'] : null); ?></span>
        <input type="text" name="code" value="<?php echo htmlspecialchars(isset($_GET['action']) && $_GET['action'] == 'edit' ? $edit_row['code'] : (isset($_POST['code']) ? $_POST['code'] : null));?>" placeholder="Код товара">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['manufacturer']) ? $errors['manufacturer'] : null); ?></span>
        <!-- переменная $selected_value приходит из goods.php-->
        <?php echo select_parse($manufacturer, 'manufacturer', 'Выберите производителя',
        htmlspecialchars($selected_value)); ?>
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['image']) ? $errors['image'] : null); ?></span>
        <input type="text" name="image"  value="<?php echo htmlspecialchars(isset($_GET['action']) && $_GET['action'] == 'edit' ? $edit_row['image'] : (isset($_POST['image']) ? $_POST['image'] : null));?>" placeholder="Название картинки">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['image-width']) ? $errors['image-width'] : null); ?></span>
        <input type="text" name="image-width" value="<?php echo htmlspecialchars(isset($_GET['action']) && $_GET['action'] == 'edit' ? $edit_row['img-width'] : (isset($_POST['img-width']) ? $_POST['img-width'] : null));?>" placeholder="Ширина картинки">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['image-height']) ? $errors['image-height'] : null); ?></span>
        <input type="text" name="image-height" value="<?php echo htmlspecialchars(isset($_GET['action']) && $_GET['action'] == 'edit' ? $edit_row['img-height'] : (isset($_POST['img-height']) ? $_POST['img-height'] : null));?>" placeholder="Высота картинки">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['price']) ? $errors['price'] : null); ?></span>
        <input type="text" name="price" value="<?php echo htmlspecialchars(isset($_GET['action']) && $_GET['action'] == 'edit' ? $edit_row['price'] : (isset($_POST['price']) ? $_POST['price'] : null));?>" placeholder="Цена товара">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['description']) ? $errors['description'] : null); ?></span>
        <textarea name="description" placeholder="Описание товара"><?php echo htmlspecialchars(isset($_GET['action']) && $_GET['action'] == 'edit' ? $edit_row['description'] : (isset($_POST['description']) ? $_POST['description'] : null));?></textarea>
    </p>
    <p>
        <input type="checkbox" id="available" name="available" <?php
        if(isset($_GET['action']) && $_GET['action'] == 'edit') {
            echo htmlspecialchars($edit_row['available']) ? 'checked' : null;
        }else {
            echo htmlspecialchars(isset($_POST['available'])  ?? $_POST['available']);
        }?>>
        <label for="available">Наличие на складе</label>
    </p>
    <input type="submit" class="btn" name="<?php echo (isset($_GET['action']) && $_GET['action'] == 'edit' ? 'edit-goods' : 'add-goods'); ?>" value="<?php echo (isset($_GET['action']) && $_GET['action'] == 'edit' ? 'Сохранить' : 'Добавить товар'); ?>">
</form>
<?php echo print_r2($edit_row); ?>
<?php echo print_r2($_POST); ?>

