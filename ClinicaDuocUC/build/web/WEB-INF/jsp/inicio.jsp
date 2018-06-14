<%-- 
    Document   : inicio
    Created on : 06-11-2017, 10:00:42
    Author     : vina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Clinica DuocUC | Inicio</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/creative.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <img src="img/logo.png" width="80" height="60">
                <a class="navbar-brand page-scroll" href="#page-top">Clínica DuocUC</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#sobreNosotros">Sobre nosotros</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#servicios">Servicios</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#instalaciones">Instalaciones</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contacto">Contacto</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="login.htm">Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1 id="homeHeading" style="color:white; background-color: rgba(31, 92, 142, 0.8);">Clínica DuocUC</h1>
                <hr>
                <p style="color:white; background-color: rgba(31, 92, 142, 0.8);">
                    Nuestra veterinaria cumple con todos los estándares de profesionalismo que nos exige el mercado y nuestros usuarios.
                    Nuestra misión es servir y brindar la ayuda necesaria a las mascotas.
                </p>
                <a href="#sobreNosotros" class="btn btn-primary btn-xl page-scroll">Más sobre nosotros</a>
            </div>
        </div>
    </header>

    <section class="bg-primary" id="sobreNosotros">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">¡Visítanos.. No te arrepentirás!</h2>
                    <hr class="light">
                    <p class="text-middle">
                        .- Profesionales con constante capacitación.<br/>
                        .- Instalaciones con tecnología de punta.<br/>
                        .- Infrastructura moderna y segura.<br/>
                        .- Descuentos en alimentos para mascotas de marca "Royal Canin"<br/>
                        .- Laboratorio Clínico.<br/>
                        .- Farmacia para tu mascota.<br/>
                        .- Centro de Rehabilitación canina.<br/>
                        .- ¡Y más...!
                    </p>
                    <a href="#contacto" class="page-scroll btn btn-default btn-xl sr-button">Ubicación</a>
                </div>
            </div>
        </div>
    </section>

    <section id="servicios">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Nuestros Servicios</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-clock-o text-primary sr-icons"></i>
                        <h3>Urgencia 24/7</h3>
                        <p class="text-muted">
                            Contamos con Servicio de Urgencia las 24 horas, los 7 días de la semana, ya sea en sucursal
                            o visitas a Domicilio (Sólo en Viña del Mar) *Pronto más zonas de la V Región*.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-building text-primary sr-icons"></i>
                        <h3>Clínica Veterinaria</h3>
                        <p class="text-muted">!No necesitas trasladar tu mascota a otra instalación!</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-plus-circle text-primary sr-icons"></i>
                        <h3>Farmacia Veterinaria</h3>
                        <p class="text-muted">Contamos con una farmacia Veterinaria la cual provee todos los
                                              medicamentos necesarios que se recetarán a buenos precios.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-paw text-primary sr-icons"></i>
                        <h3>¡Cuidamos tu mascota como uno de los nuestros!</h3>
                        <p class="text-muted">Tu mascota siempre estará en buenas manos. Le brindaremos
                                              toda la ayuda posible y le daremos todo el cariño que se merece.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="no-padding" id="instalaciones">
        <div class="container-fluid">
            <div class="row no-gutter popup-gallery">
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/1.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/1.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Infrastructura
                                </div>
                                <div class="project-name">
                                    Modernas instalaciones para la cómodidad de nuestros clientes y sus mascotas
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/2.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/2.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Urgencias 24/7
                                </div>
                                <div class="project-name">
                                    Contamos con un excelente servicio de Urgencias de 24 horas, los 7 días de la semana
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/3.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/3.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Farmacia Veterinaria
                                </div>
                                <div class="project-name">
                                    Contamos con una Farmacia Veterinaria completamente equipada para los medicamentos que se le receten
                                    a su mascota
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/4.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/4.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Distribuidor oficial de "Royal Canin"
                                </div>
                                <div class="project-name">
                                    Venta de alimentos de la elogiada marca "Royal Canin" a excelente precio
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/5.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/5.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Venta de accesorios
                                </div>
                                <div class="project-name">
                                    ¡Tenemos a la venta variados accesorios para tus mascotas!
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/6.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/6.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Laboratorio Clínico Veterinario
                                </div>
                                <div class="project-name">
                                    Contamos con el laboratorio Clínico Veterinario más moderno de la Región para brindar
                                    el mejor servicio a nuestros clientes
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Ubicación de nuestra Sucursal | Viña del Mar</h2>
                <hr class="light">
                <a href="https://goo.gl/maps/7gUPmmjHvRB2" target="_blank" class="btn btn-default btn-xl sr-button">Ver en el Mapa</a>
                <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d836.3649604120794!2d-71.54959367077285!3d-33.018011074290776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9689dde75153c471%3A0xd03c6b8f69ff35da!2s1+Ote.+458%2C+Vi%C3%B1a+del+Mar%2C+Regi%C3%B3n+de+Valpara%C3%ADso!5e0!3m2!1ses-419!2scl!4v1510436674577" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> -->
            </div>
        </div>
    </aside>

    <section id="contacto">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">¡Contáctanos!</h2>
                    <hr class="primary">
                    <p>
                        ¿Quieres conocer el estado de tu mascota?<br/>
                        ¿Quieres conocer cuanto costarán los exámenes médicos?<br/><br/>
                        Todas las dudas/consultas que tengas, las puedes hacer directamente en la sucursal o simplemente llamando al número
                        de contacto que te dejamos abajo. Puedes envíarnos un correo o llenando el formulario de 
                        consulta haciendo <a href="formulario.htm">click aquí</a>.
                        
                    </p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>032-2626789 (Llamada gratis)</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="urgencias@petland.com">urgencias@petland.com</a></p>
                </div>
            </div>
        </div>
    </section>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>

</body>
</html>