<section class="goods">
    <div class="goods__inner">
        <h2 class="goods__title">Список товаров</h2>
        <ul class="goods__list">
            <li class="goods__item"></li>
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
            <label for="code">
                <span>код товара:</span>
                <input class="<?php echo(isset($error['code']) ? 'error' : null) ?>" type="text" name="code" id="code" placeholder="код товара" value="<?php echo @htmlspecialchars($_POST['code']);?>">
            </label>
            <label for="cathegory">
                <span>Категория товара:</span>
                <?php echo select_parse($goods_list,'cathegory','- Категория товара -')?>

                </select>
                <input class="<?php echo(isset($error['code']) ? 'error' : null) ?>" type="text" name="code" id="code" placeholder="код товара" value="<?php echo @htmlspecialchars($_POST['code']);?>">
            </label>
            <label for="message">
                <span>Описание товара</span>
                <textarea class="<?php echo(isset($error['description']) ? 'error' : null) ?>" name="message" id="message" placeholder="описание товара" rows="10"><?php echo htmlspecialchars(isset($_POST['description']) ? $_POST['description'] : null);?></textarea>
            </label>
            <input type="submit" name="add_goods" value="Добавить товар">
        </form>
    </div>
</section>
