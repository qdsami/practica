<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${user.name}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container">
    <h2>Задание по практике</h2>
    <p>добро пожаловать </p>
    <ul class="nav nav-tabs" role="tablist">
        <li><a href="/">Главная</a></li>
        <#if user.email??>
            <li class="active"><a href="/user/${user.getId()}">${user.name}</a></li>
        <#else>
            <li><a href="/login">Войти</a></li>
            <li><a href="/registration">Регистрация</a></li>
        </#if>
        <#if user.email??>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="Выйти"/>
            </form>
        </#if>
    </ul>
</div>




<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h1>Страница ${user.name}</h1>
            <p>Почта ${user.email}</p>
            <h3>Посты</h3>


            <div class="container">

                <ul class="list-group">
                    <#list products as product>
                        <li class="list-group-item">
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

        </div>
    </div>
</div>


</body>
</html>