<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистрация</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Bootstrap Tabs Example</h2>
    <p>The .nav-tabs class is used to create navigation tabs:</p>
    <ul class="nav nav-tabs" role="tablist">
        <li><a href="/">Главная</a></li>
        <li><a href="/login">Войти</a></li>
        <li class="active"><a href="/registration">Регистрация</a></li>
    </ul>
</div>

<form action="/registration" method="post">
    Имя пользователя: <input type="text" name="name"><br>
    Почта: <input type="email" name="email"><br>
    Номер телефона: <input type="text" name="phoneNumber"><br>
    Пароль: <input type="password" name="password"><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="submit" value="Регистрация"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">
        ${errorMessage}
    </h2>
</#if>
<a href="/login">Вход</a>
</body>
</html>