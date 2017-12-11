<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>HTML Academy: Техномарт</title>
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="page">

  <header class="page-header">
    <a class="visually-hidden" href="#main-content">Перейти к содержанию</a>
    <div class="inner-wrapper">
      <div class="container">
        <div class="logo"><a>Техномарт</a></div>
        <div class="customer">
          <form class="search" action="https://echo.htmlacademy.ru" method="GET">
            <label class="visually-hidden" for="customer-search">Поиск</label>
            <input class="search-field" id="customer-search" name="search" type="search" placeholder="Поиск:">
            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17">
              <path fill="#ffffff" d="M17 15.586l-3.542-3.542A7.465 7.465 0 0 0 15 7.5 7.5 7.5 0 1 0 7.5 15c1.71 0 3.282-.579 4.544-1.542L15.586 17 17 15.586zM2 7.5C2 4.467 4.467 2 7.5 2 10.532 2 13 4.467 13 7.5c0 3.032-2.468 5.5-5.5 5.5A5.506 5.506 0 0 1 2 7.5z"></path>
            </svg>
          </form>
          <a class="customer-bookmarks" href="#">Закладки: <span class="bookmarks-count">0</span></a>
          <a class="customer-cart" href="#">Корзина: <span class="cart-count">0</span></a>
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
        <?php
        if(isset($_COOKIE['auth']) && $_COOKIE['auth'] == true) { ?>
        <div class="user-actions">
          <div class="user-main">
            <a class="user-profile" href="#" aria-label="Страница профиля">Администратор
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="18" viewBox="0 0 20 18">
                <path fill="#c5c5c5" d="M17.881 14.166c-2.144-.735-4.256-1.666-5.207-2.39-.657-.501-.77-1.618-.517-2.415 1.118-.903 1.864-2.477 1.864-4.278C14.021 2.276 12.221 0 10 0S5.979 2.276 5.979 5.083c0 1.801.746 3.374 1.863 4.277.253.798.141 1.915-.517 2.416-.95.724-3.063 1.654-5.207 2.39S0 18 0 18h20s.025-3.099-2.119-3.834z"></path>
              </svg>
            </a>
            <a class="user-exit" href="/index.php?logout">
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
        <?php }
        else { ?>
        <div class="authorization">
          <a class="authorization-enter" href="#">Войти
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17">
              <path fill="#c5c5c5" d="M14.875 8.5L6 0v6H0v5h6v6z"></path><path fill="#c5c5c5" d="M16.986 15.01h-5.027V17h5.027c2.178 0 3.004-1.81 3.029-3.026V3.028C19.99 1.811 19.164 0 16.986 0h-5.027v1.99h5.027c.839 0 .992.681 1.01 1.057v10.904c-.017.376-.171 1.059-1.01 1.059z"></path>
            </svg>
          </a>
          <a class="authorization-registration" href="#">Регистрация</a>
        </div>
        <?php } ?>
      </div>

      <nav class="main-menu">
        <ul class="main-menu-links">
          <li aria-current="page"><span class="visually-hidden">Текущая страница</span><a class="menu-link">Главная</a></li>
          <li><a class="menu-link" href="#">Компания</a></li>
          <li><a class="menu-link" href="catalog.html">Каталог</a></li>
          <li><a class="menu-link" href="#">Новости</a></li>
          <li><a class="menu-link" href="#">Спецпредложения</a></li>
          <li><a class="menu-link" href="#">Доставка</a></li>
          <li><a class="menu-link" href="#">Контакты</a></li>
        </ul>
      </nav>
    </div>
  </header>
  <main class="main-content" id="main-content">
    <h1 class="visually-hidden">Техномарт</h1>

    <section class="promo">
      <h2 class="visually-hidden">Что мы предлагаем:</h2>
      <div class="container">

        <div class="promo-item materials new-item">
          <strong>Материалы</strong>
          <a class="btn btn-promo" href="#">на любой вкус</a>
        </div>
        <div class="promo-item tools">
          <strong>Инструмент</strong>
          <a class="btn btn-promo" href="#">на все случаи</a>
        </div>
        <div class="promo-item vehicles">
          <strong>Техника</strong>
          <a class="btn btn-promo" href="#">для стройки</a>
        </div>
        <div class="slider">
          <input class="visually-hidden slider-1" id="slider-1" name="slider-radio" type="radio" checked>
          <input class="visually-hidden slider-2" id="slider-2" name="slider-radio" type="radio">
          <label class="slider-label slider-label-1" for="slider-1"><span class="visually-hidden">Слайдер 1</span></label>
          <label class="slider-label slider-label-2" for="slider-2"><span class="visually-hidden">Слайдер 2</span></label>
          <div class="inner-wrapper">
            <div class="slider-item">
              <h2>Перфораторы</h2>
              <p>Настоящие мужские игрушки</p>
              <img src="img/slider1.jpg" width="620" height="266" alt="Раздел «Перфораторы»">
              <a class="btn" href="catalog.html">Открыть каталог</a>
            </div>
            <div class="slider-item">
              <h2>Дрели</h2>
              <p>Соседям на радость!</p>
              <img src="img/slider2.jpg" width="620" height="266" alt="Раздел «Дрели»">
              <a class="btn" href="catalog.html">Открыть каталог</a>
            </div>
          </div>
        </div>
        <div class="promo-item discount">
          <strong>Скидки 50%</strong>
          <a class="btn btn-promo" href="#">на 350 товаров</a>
        </div>
        <div class="promo-item delivery">
          <strong>Доставка</strong>
          <a class="btn btn-promo" href="#">бесплатно</a>
        </div>
      </div>
    </section>


    <section class="popular goods">
      <div class="container">
        <header>
          <h2>Популярные товары:</h2>
          <a class="btn" href="#">все популярные товары</a>
        </header>
        <ul class="goods-list popular-list">
          <li class="goods-item">
            <img src="img/goods1.png" width="218" height="170" alt="BOSCH BFG 9000">
            <h3>Перфоратор BOSCH BFG 9000</h3>
            <s>32500 Р.</s>
            <p class="price">25500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">Подробнее</a>
            </div>
          </li>
          <li class="goods-item">
            <img src="img/goods2.png" width="218" height="170" alt="BOSCH BFG 3000">
            <h3>Перфоратор BOSCH BFG 3000</h3>
            <s>22500 Р.</s>
            <p class="price">15500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">Подробнее</a>
            </div>
          </li>
          <li class="goods-item">
            <img src="img/goods3.png" width="218" height="170" alt="BOSCH BFG 6000">
            <h3>Перфоратор BOSCH BFG 6000</h3>
            <s>30500 Р.</s>
            <p class="price">25500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">Подробнее</a>
            </div>
          </li>
          <li class="goods-item new-item">
            <img src="img/goods4.png" width="218" height="170" alt="BOSCH BFG 2000">
            <h3 class="without-discount">Перфоратор BOSCH BFG 2000</h3>
            <p class="price">12500 Р.</p>
            <div class="goods-actions">
              <a class="buy-btn" href="#" data-modal="modal-cart">Купить</a>
              <a class="bookmark-btn" href="#">Подробнее</a>
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
      </div>
    </section>

    <section class="popular manufacturers">
      <div class="container">
        <header>
          <h2>Популярные производители:</h2>
          <a class="btn" href="#">все производители</a>
        </header>
        <ul class="manufacturers-list">
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer1.png" width="122" height="32" alt="BOSCH">
            </a>
          </li>
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer2.png" width="123" height="40" alt="Makita">
            </a>
          </li>
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer3.png" width="146" height="44" alt="DeWALT">
            </a>
          </li>
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer4.png" width="184" height="32" alt="Интерскол">
            </a>
          </li>
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer5.png" width="143" height="22" alt="HITACHI">
            </a>
          </li>
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer6.png" width="121" height="73" alt="LG">
            </a>
          </li>
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer7.png" width="151" height="84" alt="AEG Power Solutions">
            </a>
          </li>
          <li class="manufacturers-list-item">
            <a class="manufacturers-item" href="#">
              <img src="img/manufacturer8.png" width="155" height="55" alt="metabo">
            </a>
          </li>
        </ul>
      </div>
    </section>

    <section class="services">
      <div class="container">
        <h2>Сервисы</h2>
        <p class="services-heading">
          Хороший интернет-магазин отличается от плохого не только ценами!
          Мы стараемся изо всех сил, чтобы сделать ваши покупки приятными.
        </p>
        <div class="inner-wrapper">
          <input class="services-radio-1 visually-hidden" id="services-radio-1" name="services-radio" type="radio" checked>
          <input class="services-radio-2 visually-hidden" id="services-radio-2" name="services-radio" type="radio">
          <input class="services-radio-3 visually-hidden" id="services-radio-3" name="services-radio" type="radio">
          <div class="services-controls">
            <label for="services-radio-1">Доставка</label>
            <label for="services-radio-2">Гарантия</label>
            <label for="services-radio-3">Кредит</label>
          </div>
          <div class="services-slides">
            <section class="services-info">
              <h3>Доставка</h3>
              <p>Мы с удовольствием доставим ваш товар прямо<br>
                к вашему подъезду совершенно бесплатно!
                Ведь мы неплохо заработаем, <br>
                поднимая его на ваш этаж!
              </p>
            </section>
            <section class="services-info">
              <h3>Гарантия</h3>
              <p>Если купленный у нас товар поломается или заискрит,<br>
                а также в случае пожара, спровоцированного его возгоранием,
                вы всегда можете быть уверены в нашей гарантии. Мы обменяем
                сгоревший товар на новый.<br>
                Дом уж восстановите как-нибудь сами.
              </p>
            </section>
            <section class="services-info">
              <h3>Кредит</h3>
              <p>Залезть в долговую яму стало проще!<br>Кредитные консультанты придут вам на помощь.
              </p>
              <a class="btn credit" href="#">отправить заявку</a>
            </section>
          </div>
        </div>
      </div>
    </section>

    <div class="about-us">
      <section class="additional-info">
        <h2>Компания «Техномарт»</h2>
        <p>Настоящий мужской шоппинг начинается здесь! Огромный выбор товаров для ремонта и
          строительства не оставит равнодушным любителей сэкономить на гастарбайтерах.
        </p>
        <p>Мы можем доставить ваш товар в самые отдаленные точки России!
          Техномарт работает со многими транспортными компаниями:
        </p>
        <ul class="about-us-partners">
          <li>Деловые линии</li>
          <li>Автотрейдинг</li>
          <li>ЖелДорЭкспедиция</li>
        </ul>
        <a class="btn" href="#">Подробнее о компании</a>
      </section>

      <section class="contacts">
        <h2>Контакты</h2>
        <p>Вы можете забрать товар сами, заехав в наш офис:</p>
        <div class="contacts-map">
          <a href="#" title="Как к нам добраться:" data-modal="modal-map"><img src="img/map.jpg" width="300" height="158" alt="Санкт-Петербург, Большая Конюшенная ул., 19/8"></a>
        </div>
        <div class="modal modal-map">
          <iframe src="https://yandex.ru/map-widget/v1/-/CBaGyCq1DB"></iframe>
          <img src="img/map-modal.jpg" width="940" height="446" alt="Санкт-Петербург, Большая Конюшенная ул., 19/8">
          <button class="modal-close" type="button"><span class="visually-hidden">Закрыть окно</span></button>
        </div>
        <a class="btn btn-feedback" href="#" data-modal="modal-feedback">Заблудились? Напишите нам!</a>
        <div class="modal modal-feedback">
          <form class="feedback" action="https://echo.htmlacademy.ru" method="POST">
            <fieldset>
              <legend class="visually-hidden">Обратная связь</legend>
              <div class="inner-wrapper">
                <p>
                  <label class="feedback-label" for="feedback-name">Ваше имя:</label>
                  <input class="feedback-input" id="feedback-name" name ="feedback-name" type="text" placeholder="Представьтесь, пожалуйста">
                </p>
                <p>
                  <label class="feedback-label" for="feedback-email">Ваш e-mail:</label>
                  <input class="feedback-input" id="feedback-email" name="feedback-email" type="email" placeholder="Для отправки ответа">
                </p>
                <p class="textarea">
                  <label class="feedback-label" for="feedback-textarea">Текст письма:</label>
                  <textarea class="feedback-input" id="feedback-textarea" name="feedback-textarea" placeholder="В свободной форме"></textarea>
                </p>
              </div>
            </fieldset>
            <div class="button-area">
              <button class="btn" name="feedback-submit" type="submit" value="send">Отправить</button>
            </div>
          </form>
          <button class="modal-close" type="button"><span class="visually-hidden">Закрыть форму обратной связи</span></button>
        </div>
      </section>
    </div>
  </main>
  <footer class="page-footer">
    <div class="footer-main">
      <div class="container">
        <div class="logo logo-footer"><a>Техномарт</a></div>
        <ul class="footer-main-menu">
          <li><a href="#">Компания</a></li>
          <li><a href="#">Новости</a></li>
          <li><a href="catalog.html">Каталог</a></li>
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
  </footer>

  <div class="popup entrance hidden">
    <form action="#" method="post">
      <p>
        <span class="error"><?php echo (isset($errors['login']) ? $errors['login'] : null); ?></span>
        <input type="text" name="login" placeholder="Введите логин">
      </p>
      <p>
        <span class="error"><?php echo (isset($errors['password']) ? $errors['password'] : null); ?></span>
        <input type="password" name="password" placeholder="Введите пароль">
      </p>
      <input type="submit" class="btn" name="entrance" value="Войти">
    </form>
  </div>
  <div class="overlay hidden"></div>
  <script src="js/script.js"></script>
</body>
</html>
