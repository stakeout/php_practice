<section class="goods-catalog">
    <div class="container">
        <?php if(!isset($_SESSION['info'])) { ?>
            <p>всего в базе <span class=""><?php echo mysqli_num_rows($res);?></span> товаров</p>
            <form action="" method="POST">
                <ul class="goods-catalog__list">
                    <?php while($row = mysqli_fetch_assoc($res)) {?>
                        <li class="goods-catalog__item">
                            <input type="checkbox" name="ids[]" value="<?php echo $row['id'];?>">
                            <a class="goods-catalog__edit" href="/index.php?module=goods&page=edit_goods_from_db&action=edit&id=<?php echo $row['id']; ?>"><span class="visually-hidden">редактировать</span></a>
                            <a class="goods-catalog__delete" href="/index.php?module=goods&page=delete_goods_from_db&action=delete&id=<?php echo $row['id']; ?>"><span class="visually-hidden">удалить</span></a>
                            <p class="goods-catalog__title"><?php echo htmlspecialchars($row['title']);?></p>
                            <label for="available"><input type="checkbox" id="available" name="available" <?php echo ($row['available'] == true ? 'checked' : null);?>></label>
                        </li>
                    <?php } ?>
                </ul>
                <input class="btn" type="submit" name="mass-delete" value="Удалить выбранные товары">
            </form>
        <?php } else { ?>
            <div class="message-wrapper">
                <h2><?php echo $_SESSION['info']; unset($_SESSION['info']); ?></h2>
                <a class="btn" href="/index.php?module=goods">Продожить редактирование</a>
            </div>
        <?php  } ?>
    </div>
</section>

