<?php if(!isset($_SESSION['info'])) { ?>
<form class="add-goods" action="#" method="post">
    <p class="login-data">Форма добавления товаров</p>
    <p>
        <span class="error"><?php echo (isset($errors['title']) ? $errors['title'] : null); ?></span>
        <input type="text" name="title" value="<?php echo htmlspecialchars(isset($_POST['title']) ? $_POST['title'] : null);?>" placeholder="Название товара">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['code']) ? $errors['code'] : null); ?></span>
        <input type="text" name="code" value="<?php echo htmlspecialchars(isset($_POST['code']) ? $_POST['code'] : null);?>" placeholder="Код товара">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['manufacturer']) ? $errors['manufacturer'] : null); ?></span>
        <!-- переменная $selected_value приходит из goods.php-->
        <?php echo select_parse($manufacturer, 'manufacturer', 'Выберите производителя',
        htmlspecialchars($selected_value)); ?>
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['image']) ? $errors['image'] : null); ?></span>
        <input type="text" name="image"  value="<?php echo htmlspecialchars(isset($_POST['image']) ? $_POST['image'] : null);?>" placeholder="Название картинки">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['image-width']) ? $errors['image-width'] : null); ?></span>
        <input type="text" name="image-width" value="<?php echo htmlspecialchars(isset($_POST['image-width']) ? $_POST['image-width'] : null);?>" placeholder="Ширина картинки">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['image-height']) ? $errors['image-height'] : null); ?></span>
        <input type="text" name="image-height" value="<?php echo htmlspecialchars(isset($_POST['image-height']) ? $_POST['image-height'] : null);?>" placeholder="Высота картинки">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['price']) ? $errors['price'] : null); ?></span>
        <input type="text" name="price" value="<?php echo htmlspecialchars(isset($_POST['price']) ? $_POST['price'] : null);?>" placeholder="Цена товара">
    </p>
    <p>
        <span class="error"><?php echo (isset($errors['description']) ? $errors['description'] : null); ?></span>
        <textarea name="description" placeholder="Описание товара"><?php echo htmlspecialchars(isset($_POST['description']) ? $_POST['description'] : null);?></textarea>
    </p>
    <p>
        <input type="checkbox" name="available" id="available"><label for="available">наличие на складе</label>
    </p>
    <input type="submit" class="btn" name="add-goods" value="Добавить товар">
</form>
<?php } else { ?>
    <div class="message-wrapper">
        <h2><?php echo $_SESSION['info']; unset($_SESSION['info']); ?></h2>
        <a class="btn" href="/index.php?module=goods&page=add_goods_to_db">Добавить еще одну запись</a>
    </div>
<?php  } ?>
<?php echo print_r2($_POST); ?>
