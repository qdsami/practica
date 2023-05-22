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
<h1>Подробная инфа</h1>
<#list images as img>
    <img src="/images/${img.id}" height="220" /> <br><br>
</#list>
<b>Название: </b>${product.title}<br>
<b>Описание: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Имя: </b> <a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>