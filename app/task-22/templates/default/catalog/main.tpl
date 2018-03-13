    <div class="catalog-wrap container">
      <ul class="breadcrumbs">
        <li><a class="home-icon" href="index.html"><span class="visually-hidden">Домой</span></a></li>
        <li><a href="#">Каталог</a></li>
        <li><a href="#">Инструмент</a></li>
        <li><a aria-current="page"><span class="visually-hidden">Текущая страница: </span>Перфораторы</a></li>
    </ul>
    <h1 class="catalog-heading">Перфораторы</h1>
    <section class="filter">
        <h2 class="visually-hidden">Фильтр товаров</h2>
        <aside>
          <h3>Фильтр:</h3>
          <form action="https://echo.htmlacademy.ru" method="GET">
            <fieldset class="filter-price">
              <legend>Цена:</legend>
              <div class="range-slider">
                <div class="scale"></div>
            </div>
            <div class="price-controls">
                <label class="visually-hidden" for="range-min">Минимальная цена</label>
                <input class="price-range" id="range-min" name="minprice" type="number" min="0" max="40000" step="1" placeholder="0">
                <label class="visually-hidden" for="range-max">Максимальная цена</label>
                <input class="price-range" id="range-max" name="maxprice" type="number" min="0" max="40000" step="1" placeholder="40000">
            </div>
        </fieldset>
        <fieldset class="filter-manufacturers">
          <legend>Производители:</legend>
          <input class="filter-checkbox visually-hidden" id="filter-checkbox-1" name="bosch" type="checkbox" checked>
          <label class="checkbox-label" for="filter-checkbox-1">bosch</label>
          <input class="filter-checkbox visually-hidden" id="filter-checkbox-2" name="interscol" type="checkbox">
          <label class="checkbox-label" for="filter-checkbox-2">интерскол</label>
          <input class="filter-checkbox visually-hidden" id="filter-checkbox-3" name="makita" type="checkbox" checked>
          <label class="checkbox-label" for="filter-checkbox-3">makita</label>
          <input class="filter-checkbox visually-hidden" id="filter-checkbox-4" name="dewalt" type="checkbox">
          <label class="checkbox-label" for="filter-checkbox-4">dewalt</label>
          <input class="filter-checkbox visually-hidden" id="filter-checkbox-5" name="hitachi" type="checkbox">
          <label class="checkbox-label" for="filter-checkbox-5">hitachi</label>
      </fieldset>
      <fieldset class="filter-power-supply">
          <legend>Питание</legend>
          <input class="filter-radio visually-hidden" id="power-radio-1" name="power-supply" type="radio" value="battery" checked>
          <label class="label-radio" for="power-radio-1">Аккумуляторные</label>
          <input class="filter-radio visually-hidden" id="power-radio-2" name="power-supply" type="radio" value="power-grid">
          <label class="label-radio" for="power-radio-2">Сетевые</label>
      </fieldset>
      <button class="btn-submit" type="submit">Показать</button>
  </form>
</aside>
</section>
<section class="grid-products">
    <h2 class="visually-hidden">Каталог продукции</h2>
    <div class="sorting">
      <p>Сортировка:</p>
      <ul class="sorting-controls">
        <li class=""><a class="active-link" href="#">По цене</a></li>
        <li><a class="" href="#">По типу</a></li>
        <li><a class="" href="#">По функционалу</a></li>
    </ul>
    <a class="sorting-up active-link" href="/index.php?module=catalog&asc"><span class="visually-hidden">По возрастанию</span></a>
    <a class="sorting-down" href="/index.php?module=catalog&desc"><span class="visually-hidden">По убыванию</span></a>
</div>
<ul class="goods-list catalog-list">
    <?php echo $row; ?>
    <?php while($row = mysqli_fetch_assoc($res)) {?>
        <li class="goods-item catalog-item" data-number="<?php echo htmlspecialchars($row['id']); ?>">
            <img src="/img/<?php echo htmlspecialchars($row['image']); ?>" width="<?php echo htmlspecialchars($row['img-width']); ?>" height="<?php echo htmlspecialchars($row['img-height']); ?>" alt="<?php echo htmlspecialchars($row['title']); ?>">
            <h3><a href="#"><?php echo htmlspecialchars($row['title']); ?></a></h3>
            <?php echo (!$row['available'] ? '<span class="no-available">нет в наличии</span>' : null);?>
            <p class="price"><?php echo htmlspecialchars($row['price']); ?> &#8381;</p>
            <div class="goods-actions">
                <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
                <a class="bookmark-btn" href="#">В закладки</a>
            </div>
        </li>
    <?php } ?>
</ul>
<div class="modal modal-cart">
  <p>Товар добавлен в корзину!</p>
  <div class="button-area">
    <a class="btn" href="#">Оформить заказ</a>
    <button class="btn return" type="button">Продолжить покупки</button>
</div>
<button class="modal-close" type="button"><span class="visually-hidden">Закрыть окно</span></button>
</div>
<ul class="pages">
  <li aria-current="page"><a class="page-active" href="#" aria-label="Страница">1</a></li>
  <li><a href="catalog_2.html" aria-label="Страница">2</a></li>
  <li><a href="catalog_3.html" aria-label="Страница">3</a></li>
  <li><a class="page-next" href="catalog_2.html" aria-label="Страница">Следующая</a></li>
</ul>
</section>
</div>

<article class="catalog-additional-info">
  <div class="container">
    <h2>Пара слов о перфораторах</h2>
    <p>Перфоратор — универсальный строительный инструмент.
      Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне.<br>
      Существуют электромеханические и пневматические перфораторы. Современные модели
      могут выполнять функции дрели, шуруповерта и отбойного молотка. В
      ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.
  </p>
</div>
</article>

