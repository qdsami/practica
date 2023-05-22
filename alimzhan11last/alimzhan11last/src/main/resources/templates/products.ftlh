<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alimzhan Start Page</title>
</head>
<body>
<h1>Hello!</h1><hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>

<#else>
    <a href="/login">Войти</a></h1>
    <hr>
    <a href="/registration">Регистрация</a></h1>
    <hr>
</#if>


<h1>Список</h1>
<form action="/" method="get">
    Поиск по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} тенге | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Записей нет!</h3>
</#list>

<#if user.email??>

    <h3>Создать</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название: <input type="text" name="title"/><br><br>
        Описание: <input type="text" name="description"/><br><br>
        Цена: <input type="number" name="price"/><br><br>
        Город: <input type="text" name="city"/><br><br>
        Фото 1: <input type="file" name="file1"/><br><br>
        Фото 2: <input type="file" name="file2"/><br><br>
        Фото 3: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавить"/>
    </form>

</#if>
</body>
</html>