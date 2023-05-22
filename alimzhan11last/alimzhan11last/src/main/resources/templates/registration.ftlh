<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистрация</title>
</head>
<body>
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