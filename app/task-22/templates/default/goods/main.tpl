<section class="goods">
    <div class="goods__inner">
        <h2 class="goods__title">Список товаров</h2>
        <?php if(isset($info) && !empty($info)) { ?>
            <h3>Запись была добавлена</h3>
        <?php } ?>
        <ul class="goods__list">
        <?php if(mysqli_num_rows($res)) {
            while($row = mysqli_fetch_assoc($res)) { ?>
            <li class="goods-item">
                <span class="goods-item__id"><?php echo htmlspecialchars($row['id']); ?></span><span class="goods__title"><?php echo htmlspecialchars($row['title']); ?></span><span class="review__town"><?php echo htmlspecialchars($row['price']); ?></span><span class="review__time"><?php echo htmlspecialchars($row['code']); ?></span>
                <a href="/index.html?edit-item" class="goods-item__edit">Редактировать</a><a href="index.php?module=goods&action=delete&id=<?php echo htmlspecialchars($row['id']); ?>" class="goods-item__delete">Удалить</a>
            </li>
            <?php }
        } ?>
        </ul>
        <form class="goods-form" action="#" method="POST">
            <h2>Добавить товар</h2>
            <label for="title">
                <span>Название товара</span>
                <input class="<?php echo(isset($error['title']) ? 'error' : null) ?>" type="text" name="title" id="title" placeholder="название товара" value="<?php echo @htmlspecialchars($_POST['title']);?>">
            </label>
            <label for="price">
                <span>цена товара:</span>
                <input class="<?php echo(isset($error['price']) ? 'error' : null) ?>" type="text" name="price" id="price" placeholder="цена товара" value="<?php echo @htmlspecialchars($_POST['price']);?>">
            </label>
            <label for="cathegory">
                <span>Категория товара:</span>
                <?php echo select_parse($goods_list,'cathegory','- Категория товара -')?>
            </label>
            <label for="code">
                <span>Код товара:</span>
                <input class="<?php echo(isset($error['code']) ? 'error' : null) ?>" type="text" name="code" id="code" placeholder="код товара" value="<?php echo @htmlspecialchars($_POST['code']);?>">
            </label>
            <label for="description">
                <span>Описание товара</span>
                <textarea class="<?php echo(isset($error['description']) ? 'error' : null) ?>" name="description" id="description" placeholder="описание товара" rows="10"><?php echo htmlspecialchars(isset($_POST['description']) ? $_POST['description'] : null);?></textarea>
            </label>
            <input type="submit" name="add_goods" value="Добавить товар">
        </form>
    </div>
</section>
