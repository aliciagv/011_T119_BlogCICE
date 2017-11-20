<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Boolean existeError = request.getParameter("error") != null;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Blog CICE</title>
        <!-- Archivos CSS BOOTSTRAP -->
        <link href="../css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- Archivos CSS Propios -->
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <!--Archivos JSP BOOTSTRAP -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-md-offset-4">
                    <%if (existeError) {%>
                        <div class="alert alert-danger" role="alert" >Este es el mensaje de error ...</div>
                    <%}%>
                    <div class="account-wall">
                        <img class="profile-img" src="../assets/images/logo-small.png" alt="Logo login">
                        <form class="form-signin" action="../Login" method="POST">
                            <input type="email" name="user" class="form-control" placeholder="Correo electrónico" required autofocus>
                            <input type="password" name="pass" class="form-control" placeholder="Contraseña" required>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">
                                Inicia sesión</button>
                        </form>
                    </div>
                    <a href="#" class="text-center new-account">¿Aún no estas registrado? Crea una cuenta</a>
                </div>
            </div>
        </div>
    </body>
</html>
