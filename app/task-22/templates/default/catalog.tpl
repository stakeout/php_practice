<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="utf-8">
    <title>Техномарт: Каталог</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style-min.css">
  </head>
  <body class="catalog-page">
    <header class="page-header">
      <a class="visually-hidden" href="#main-content">Перейти к содержанию</a>
      <div class="inner-wrapper">
        <div class="container">
          <div class="logo"><a href="index.html" aria-label="Главная страница">Техномарт</a></div>
          <div class="customer">
            <form class="search" action="https://echo.htmlacademy.ru" method="GET">
              <label class="visually-hidden" for="customer-search"><span class="visually-hidden">Поиск</span></label>
              <input class="search-field" id="customer-search" name="search" type="search" placeholder="Поиск:">
              <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17">
                <path fill="#ffffff" d="M17 15.586l-3.542-3.542A7.465 7.465 0 0 0 15 7.5 7.5 7.5 0 1 0 7.5 15c1.71 0 3.282-.579 4.544-1.542L15.586 17 17 15.586zM2 7.5C2 4.467 4.467 2 7.5 2 10.532 2 13 4.467 13 7.5c0 3.032-2.468 5.5-5.5 5.5A5.506 5.506 0 0 1 2 7.5z"></path>
              </svg>
            </form>
            <a class="customer-bookmarks" href="#">Закладки: <span class="bookmarks-count">0</span></a>
            <a class="customer-cart-filled" href="#">Корзина: <span class="cart-count">10</span></a>
            <a class="customer-order" href="#">Оформить заказ</a>
          </div>
        </div>
      </div>

      <div class="container">

        <div class="info">
          <p class="info-general">Интернет-магазин строительных материалов и инструментов для ремонта</p>
          <p class="info-contacts">
            <span class="info-tel">+7 (812) 555-05-55</span>
            <span class="info-address">г. Санкт-Петербург, ул. Б. Конюшенная, д. 19/8</span>
          </p>
          <div class="user-actions">
            <div class="user-main">
              <a class="user-profile" href="#" aria-label="Страница профиля">Равшан Джамшутович
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="18" viewBox="0 0 20 18">
                  <path fill="#c5c5c5" d="M17.881 14.166c-2.144-.735-4.256-1.666-5.207-2.39-.657-.501-.77-1.618-.517-2.415 1.118-.903 1.864-2.477 1.864-4.278C14.021 2.276 12.221 0 10 0S5.979 2.276 5.979 5.083c0 1.801.746 3.374 1.863 4.277.253.798.141 1.915-.517 2.416-.95.724-3.063 1.654-5.207 2.39S0 18 0 18h20s.025-3.099-2.119-3.834z"></path>
                </svg>
              </a>
              <a class="user-exit" href="#">
                <span class="visually-hidden">Выход из профиля</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 21 17">
                  <g fill="#c5c5c5">
                    <path fill="#c5c5c5" d="M21 8.5L12.125 0v6h-6v5h6v6z"></path><path fill="#c5c5c5" d="M3.106 13.952V3.048c.018-.376.171-1.057 1.01-1.057h5.027V0H4.116C1.938 0 1.112 1.81 1.087 3.027v10.946C1.112 15.189 1.938 17 4.116 17h5.027v-1.99H4.116c-.839 0-.992-.683-1.01-1.058z"></path>
                  </g>
                </svg>
              </a>
            </div>
            <div class="user-additional">
              <a class="user-actions-personal" href="#">Мои заказы</a>
              <span>&bull;</span>
              <a class="user-actions-personal" href="#">Личный кабинет</a>
            </div>
          </div>
        </div>

        <nav class="main-menu">
          <ul class="main-menu-links">
            <li><a class="menu-link" href="index.html">Главная</a></li>
            <li><a class="menu-link" href="#">Компания</a></li>
            <li><a class="menu-link" aria-current="page"><span class="visually-hidden">Текущая страница: </span>Каталог</a></li>
            <li><a class="menu-link" href="#">Новости</a></li>
            <li><a class="menu-link" href="#">Спецпредложения</a></li>
            <li><a class="menu-link" href="#">Доставка</a></li>
            <li><a class="menu-link" href="#">Контакты</a></li>
          </ul>
        </nav>
      </div>
    </header>


    <div class="container">
      <ul class="breadcrumbs">
        <li><a class="home-icon" href="index.html"><span class="visually-hidden">Домой</span></a></li>
        <li><a href="#">Каталог</a></li>
        <li><a href="#">Инструмент</a></li>
        <li><a aria-current="page"><span class="visually-hidden">Текущая страница: </span>Перфораторы</a></li>
      </ul>
      <h1 class="catalog-heading">Перфораторы</h1>
    </div>


    <main class="catalog-content" id="main-content">
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
          <a class="sorting-up active-link" href="#"><span class="visually-hidden">По возрастанию</span></a>
          <a class="sorting-down" href="#"><span class="visually-hidden">По убыванию</span></a>
        </div>

        <ul class="goods-list catalog-list">
          <li class="goods-item catalog-item">
            <img src="img/goods2.png" width="218" height="170" alt="BOSCH BFG 3000">
            <h3>Перфоратор BOSCH BFG 3000</h3>
            <s>22500 Р.</s>
            <p class="price">15500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item catalog-item">
            <img src="img/goods3.png" width="218" height="170" alt="BOSCH BFG 6000">
            <h3>Перфоратор BOSCH BFG 6000</h3>
            <s>30500 Р.</s>
            <p class="price">25500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item new-item catalog-item">
            <img src="img/goods4.png" width="218" height="170" alt="BOSCH BFG 2000">
            <h3 class="without-discount">Перфоратор BOSCH BFG 2000</h3>
            <p class="price">12500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item catalog-item">
            <img src="img/goods2.png" width="218" height="170" alt="BOSCH BFG 3000">
            <h3>Перфоратор BOSCH BFG 3000</h3>
            <s>22500 Р.</s>
            <p class="price">15500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item catalog-item">
            <img src="img/goods3.png" width="218" height="170" alt="BOSCH BFG 6000">
            <h3>Перфоратор BOSCH BFG 6000</h3>
            <s>30500 Р.</s>
            <p class="price">25500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item new-item catalog-item">
            <img src="img/goods4.png" width="218" height="170" alt="BOSCH BFG 2000">
            <h3 class="without-discount">Перфоратор BOSCH BFG 2000</h3>
            <p class="price">12500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item catalog-item">
            <img src="img/goods2.png" width="218" height="170" alt="BOSCH BFG 3000">
            <h3>Перфоратор BOSCH BFG 3000</h3>
            <s>22500 Р.</s>
            <p class="price">15500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item catalog-item">
            <img src="img/goods3.png" width="218" height="170" alt="BOSCH BFG 6000">
            <h3>Перфоратор BOSCH BFG 6000</h3>
            <s>30500 Р.</s>
            <p class="price">25500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
          <li class="goods-item new-item catalog-item">
            <img src="img/goods4.png" width="218" height="170" alt="BOSCH BFG 2000">
            <h3 class="without-discount">Перфоратор BOSCH BFG 2000</h3>
            <p class="price">12500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">В закладки</a>
            </div>
          </li>
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
    </main>

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

    <footer class="page-footer">
      <div class="footer-main">
        <div class="container">
          <div class="logo logo-footer"><a href="index.html" aria-label="Главная страница">Техномарт</a></div>
          <ul class="footer-main-menu">
            <li><a href="#">Компания</a></li>
            <li><a href="#">Новости</a></li>
            <li><a aria-current="page"><span class="visually-hidden">Текущая страница: </span>Каталог</a></li>
            <li><a href="#">Доставка</a></li>
            <li><a href="#">Контакты</a></li>
          </ul>
        </div>
        <div class="container">
          <p class="footer-contact-info">г. Санкт-Петербург, ул. Б. Конюшенная, д. 19/8
            +7 (812) 555-05-55
          </p>
          <ul class="footer-additional-menu">
            <li><a href="#">Материалы</a></li>
            <li><a href="#">Техника</a></li>
            <li><a href="#">Инструмент</a></li>
            <li><a href="#">Спецпредложения</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-additional">
        <div class="container">
          <p class="footer-text">© 2010–2017 Компания «Техномарт» Все права защищены
          </p>
          <ul class="footer-social">
            <li><a class="social-btn" href="#"><span class="visually-hidden">ВКонтакте</span></a></li>
            <li><a class="social-btn" href="#"><span class="visually-hidden">Фейсбук</span></a></li>
            <li><a class="social-btn" href="#"><span class="visually-hidden">Инстаграм</span></a></li>
          </ul>
          <p class="footer-text">Обратная связь: <a href="mailto:mail@htmlacademy.ru">mail@htmlacademy.ru</a></p>
          <p class="footer-text">Разработано – <a href="https://htmlacademy.ru/intensive/htmlcss">htmlacademy.ru</a></p>
        </div>
      </div>
    </footer>
  <script src="js/script-min.js"></script>
  </body>
</html>
