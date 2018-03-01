<section class="goods">
    <div class="container">
        <p>всего в базе <span class=""><?php echo mysqli_num_rows($res);?></span> товаров</p>
        <form action="" method="POST">
            <?php if(isset($_SESSION['info'])) { ?>
                <h2><?php echo $_SESSION['info'] ?></h2>
            <?php unset($_SESSION['info']); } ?>
            <ul class="goods__list">
                <?php if(mysqli_num_rows($res))
                    while($row = mysqli_fetch_assoc($res)) {?>
                    <li class="goods__item">
                        <input type="checkbox" name="ids[]" value="<?php echo $row['id'];?>">
                        <p class="goods__title"><?php echo $row['title'];?></p>
                        <a class="goods__delete" href="/index.php?module=goods&action=delete&id=<?php echo $row['id']; ?>"><span class="visually-hidden">удалить</span></a>
                    </li>
                <?php } ?>
            </ul>
            <input class="btn" type="submit" name="mass-delete" value="Удалить выбранные товары">
        </form>
    </div>
</section>
<form class="add-goods" action="#" method="post">
    <?php
    if(isset($_SESSION['info'])) { ?>
        <h2>запись <?php echo $_SESSION['info'] ?> была добавлена</h2>
    <?php unset($_SESSION['info']); } ?>
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
        <?php echo select_parse($manufacturer, 'manufacturer', 'Выберите производителя'); ?>
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
    <input type="submit" class="btn" name="add-goods" value="Добавить товар">
</form>
