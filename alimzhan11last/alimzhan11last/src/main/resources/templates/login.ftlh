<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вход</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Bootstrap Tabs Example</h2>
    <p>The .nav-tabs class is used to create navigation tabs:</p>
    <ul class="nav nav-tabs" role="tablist">
        <li><a href="/">Главная</a></li>
        <li class="active"><a href="/login">Войти</a></li>
        <li><a href="/registration">Регистрация</a></li>
    </ul>
</div>


<#--<form action="/login" method="post">-->
<#--    Почта: <input type="email" name="username"><br>-->
<#--    Пароль: <input type="password" name="password"><br>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
<#--    <input type="submit" value="Вход"/>-->
<#--</form>-->
<#--<a href="/registration">Регистрация</a>-->




<div class="main">
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-form">
                    <h2 class="form-title">Войти в аккаунт</h2>
                    <form action="/login" method="post" class="register-form" id="login-form">
                        <div class="form-group">
                            <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="email" name="username" id="Почта" placeholder="Почта"/>
                        </div>
                        <div class="form-group">
                            <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="password" id="Пароль" placeholder="Пароль"/>
                        </div>
                        <div class="form-group form-button">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input type="submit" value="Вход" class="form-submit"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
</body>
</html>