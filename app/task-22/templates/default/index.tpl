<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>HTML Academy: Техномарт</title>
  <link rel="stylesheet" href="/css/normalize.css">
  <link rel="stylesheet" href="/css/style.css">
</head>
<body class="page">

  <header class="page-header">
    <a class="visually-hidden" href="#main-content">Перейти к содержанию</a>
    <div class="inner-wrapper">
      <div class="container">
        <div class="logo"><a <?php echo ($_GET['module'] !== 'main' ? 'href=/' : null)?>>Техномарт</a></div>
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
    <a class="user-actions-personal add-goods-btn" href="/index.php?module=goods&page=add-goods">добавить товар</a>
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
      <li><a class="menu-link" <?php echo ($_GET['module'] !== 'main' ? 'href=/' : null)?>>Главная</a></li>
      <li><a class="menu-link" href="#">Компания</a></li>
      <li><a class="menu-link" <?php echo ($_GET['module'] !== 'catalog' ? 'href=/index.php?module=catalog' : null)?>>Каталог</a></li>
      <li><a class="menu-link" href="#">Новости</a></li>
      <li><a class="menu-link" href="#">Спецпредложения</a></li>
      <li><a class="menu-link" href="#">Доставка</a></li>
      <li><a class="menu-link" href="#">Контакты</a></li>
  </ul>
</nav>
</div>
</header>
<main class="page-content">
    <?php include $_GET['module'].'/'.$_GET['page'].'.tpl'; ?>
</main>

<footer class="page-footer">
    <div class="footer-main">
      <div class="container">
        <div class="logo logo-footer"><a <?php echo ($_GET['module'] !== 'main' ? 'href=/' : null)?>>Техномарт</a></div>
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
        <p class="login-data">Логин: admin, pass: 123</p>
        <p>
            <span class="error"><?php echo (isset($errors['login']) ? $errors['login'] : null); ?></span>
            <input type="text" name="login" value="admin" placeholder="Введите логин">
        </p>
        <p>
            <span class="error"><?php echo (isset($errors['password']) ? $errors['password'] : null); ?></span>
            <input type="password" name="password" value="123" placeholder="Введите пароль">
        </p>
        <input type="submit" class="btn" name="entrance" value="Войти">
    </form>
</div>
<div class="popup add-goods hidden">
    <form action="#" method="post">
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
            <?php echo select_parse($manufacturer, 'manufacturer', '- Выберите производителя -'); ?>
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
</div>

<div class="overlay hidden"></div>
<script src="js/script.js"></script>
</body>
</html>
