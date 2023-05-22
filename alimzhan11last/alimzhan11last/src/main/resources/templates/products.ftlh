<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Задание по практике</h2>
    <p>добро пожаловать</p>
    <ul class="nav nav-tabs" role="tablist">
        <li class="active"><a href="/">Главная</a></li>
        <#if user.email??>
            <li><a href="/user/${user.getId()}">${user.name}</a></li>
        <#else>
            <li><a href="/login">Войти</a></li>
            <li><a href="/registration">Регистрация</a></li>
        </#if>
    </ul>
</div>



<#--<h1>Список</h1>-->
<#--<form action="/" method="get">-->
<#--    Поиск по названию: <input type="text" name="title"><br>-->
<#--    <input type="submit" value="Поиск">-->
<#--</form>-->


<div class="container custom-container">
    <h1>Главная страница</h1>
    <form class="post-search" action="/" method="get">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Поиск постов" name="title">
            <div class="input-group-append">
                <input class="btn btn-primary" type="submit" value="Поиск">
            </div>
        </div>
    </form>
</div>

<div class="container">

    <ul class="list-group">
        <#list products as product>
            <li class="list-group-item" style="margin-top: 20px">
                <div>
                    <h5 class="mb-1">${product.title}</h5>
                    <p class="mb-1">${product.price} тенге</p>
                    <a class="btn btn-primary" type="button" href="/product/${product.id}">Подробнее</a>
                </div>
            </li>
        <#else>
            <h5>Записей нет!</h5>
        </#list>

    </ul>
</div>

<#if user.email??>

    <div class="container">
        <h2>Создать новый пост</h2>
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="postTitle">Название поста</label>
                <input name="title" type="text" class="form-control" id="postTitle" placeholder="Введите название поста">
            </div>
            <div class="form-group">
                <label for="postDescription">Описание</label>
                <textarea name="description" class="form-control" id="postDescription" rows="3" placeholder="Введите описание поста"></textarea>
            </div>
            <div class="form-group">
                <label for="postPrice">Цена</label>
                <input name="price" type="text" class="form-control" id="postPrice" placeholder="Введите цену">
            </div>
            <div class="form-group">
                <label for="postCity">Город</label>
                <input name="city" type="text" class="form-control" id="postCity" placeholder="Введите город">
            </div>
            <div class="form-group">
                <label for="postPhotos">Фото</label>
                <input name="file1" type="file" class="form-control-file" id="postPhotos">
            </div>
            <div class="form-group">
                <label for="postPhotos">Фото</label>
                <input name="file2" type="file" class="form-control-file" id="postPhotos">
            </div>
            <div class="form-group">
                <label for="postPhotos">Фото</label>
                <input name="file3" type="file" class="form-control-file" id="postPhotos">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" class="btn btn-primary" value="Добавить"/>
        </form>
    </div>

</#if>
</body>
</html>