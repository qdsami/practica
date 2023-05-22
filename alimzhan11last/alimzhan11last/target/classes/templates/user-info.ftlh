<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${user.name}</title>
</head>
<body>
<h3>Страница ${user.name}</h3>
<br><br>
<h3>Почта ${user.email}</h3>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} тенге | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Нет записей</h3>
</#list>
</body>
</html>