

<%-- 
    Document   : index.jsp
    Created on : 15-nov-2017, 18:27:47
    Author     : cice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Blog</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- ARCHIVOS CSS Bootstrap -->
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/> <!--TEMA POR DEFECTO -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- My css -->
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container menu">
            <div class="wrapper">
                <div class="navegador">
                    <nav>
                        <ul>
                            <li>Menú</span></li>
                            <li>Nuevo</li>
                            <li>Buscar</li>
                        </ul>
                    </nav>
                </div>
                <img src="assets/head-brand-logo.svg" alt="logo-cabecera">
                
            </div>
        </div>

        <div class="container publi">
            <div class="wrapper">

            </div>
        </div>

        <div class="container cabecera">
            <div class="wrapper">
                <img src="assets/images/1920_733.jpg" alt="imagen-destacada">
                <div class="row carrusel">
                    <div class="col-md-4">
                        <img src="assets/images/1366_2000.jpg" alt="imagen-destacada1">
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/1366_2000.jpg" alt="imagen-destacada2">
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/1366_2000.jpg" alt="imagen-destacada3">
                    </div>
                </div>
            </div>

            <div class="container cuerpo">
                <div class="wrapper">
                    <div class="row">
                        <div class="col-md-12">
                            <h3>Lo útimo</h3>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-9 seccion">
                            <%for (int i=0; i<3;i ++){%>
                            <div class="row noticia">
                                <div class="col-md-6">
                                    <h4>
                                        El chip A11X de los próximos iPad podría ser un auténtico monstruo de ocho núcleos  
                                    </h4>
                                    <p><span>IOS</span></p>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                    </p>

                                    <p><a href="#">LEER MÁS</a></p>
                                    <p>Autor</p>

                                </div>
                                <div class="col-md-6" imagen> <!-- barra lateral -->
                                    <aside>
                                        <img src="assets/images/1366_2000.jpg" alt="imagen-destacada4">
                                    </aside>

                                </div>

                            </div>
                            <%}%>
                        </div>
                        <div class="col-md-3"> <!-- barra lateral -->
                            <aside>
                                <img src="assets/images/1366_2000.jpg" alt="imagen-destacada4">
                            </aside>

                        </div>

                    </div>
                </div>
            </div>

            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
    </body>
</html>
