<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alimzhan Start Page</title>
</head>
<body>
<h1>Admin</h1><hr>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Активность</th>
        <th>Роли</th>
        <th>Бан</th>
        <th>Редактировать роли</th>
        <th>Подробная информация</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}<#sep>, </#list></th>
            <th><form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form></th>

            <th><a href="/admin/user/edit/${user.id}">Редактирование</a></th>
            <th><a href="/user/${user.id}">Подробная информация</a></th>
        </tr>
        <#else>
        <h3>Не найден пользователь</h3>
    </#list>
</table>
</body>
</html>