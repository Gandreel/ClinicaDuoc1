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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <a class="page-scroll" href="#ubicacion">Ubicación</a>
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
                <!--<h1 id="homeHeading" style="color:white; background-color: rgba(31, 92, 142, 0.8);">Clínica DuocUC</h1>-->
                <img id="homeHeading" src="img/logoClinica.png" alt="">
                <hr>
                <p style="color:white; background-color: rgba(31, 92, 142, 0.8);">
                    Nuestra clínica médica se especializa en brindar una excelente atención a nuestros pacientes y comprometiéndonos en
                    satisfacer sus necesidades. Nuestros especialistas están capacitados para
                    ejercer y demostrar los conocimientos adquiridos por sus docentes e instalaciones.
                    Solo debes reservar tu hora de forma presencial y tendrás una excelente atención médica.
                </p>
                <a href="#ubicacion" class="btn btn-primary btn-xl page-scroll">¡Ubicación para Reservar hora médica!</a>
            </div>
        </div>
    </header>

    <section class="bg-primary" id="sobreNosotros">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Especialistas comprometidos con tu Salud</h2>
                    <hr class="light">
                    <p class="text-middle">
                        .- Médicos altamente capacitados para cubrir sus necesidades.<br/>
                        .- Instalaciones con tecnología de punta.<br/>
                        .- Infrastructura moderna y segura.<br/>
                        .- Médicos con experiencia reconocida y profesional.<br/>
                        .- Farmacia clínica.<br/>
                        .- ¡Y más...!
                    </p>
                    <a href="#ubicacion" class="page-scroll btn btn-default btn-xl sr-button">Ubicación</a>
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
                        <h3>¡Servicio más rápido, ágil y seguro!</h3>
                        <p class="text-muted">
                            Nuestra nueva actualización de un Sistema Informático nos brindará una mejora en el
                            Servicio a nuestros pacientes, otorgándole seguridad en sus datos y una atención más expedita.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-building text-primary sr-icons"></i>
                        <h3>Clínica Ambulatoria</h3>
                        <p class="text-muted">No necesitas estar registrado en una red hospitalaria. Puedes hacerlo
                                              directamente aquí para registrar tus datos.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-plus-circle text-primary sr-icons"></i>
                        <h3>Farmacia</h3>
                        <p class="text-muted">Contamos con una farmacia la cual provee de todos los
                                              medicamentos necesarios que se recetarán por nuestros médicos.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-address-book text-primary sr-icons"></i>
                        <h3>Reserva tu hora médica</h3>
                        <p class="text-muted">Reserva tu hora médica con cualquiera de nuestros especialistas
                                              para poder efectuar tus consultas o exámenes directamente en la clínica.
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
                                    Especialistas
                                </div>
                                <div class="project-name">
                                    Contamos con excelentes especialistas que le brindarán un buen servicio
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
                                    ¡Adiós papeleos!
                                </div>
                                <div class="project-name">
                                    Con el nuevo sistema Informático implementado nos evitaremos todos los papeleos de Registro
                                    y ahorraremos tiempo valioso para su consulta
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
                                    ¡En constante aprendizaje!
                                </div>
                                <div class="project-name">
                                    Contamos con una infraestructura de calidad y con nuestro personal capacitado para toda
                                    ocasión
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
                                    Urgencia Dental
                                </div>
                                <div class="project-name">
                                    Nuestra clínica posee una Unidad de Urgencia Dental para la comunidad la cual es un área
                                     importante y de gran necesidad
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
                                    Farmacia Clínica
                                </div>
                                <div class="project-name">
                                    Contamos con una Farmacia completamente equipada con los medicamentos que se le receten
                                    por su médico de turno
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <aside class="bg-dark" id="ubicacion">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Cómo llegar | Valparaíso</h2>
                <hr class="light">
                <a href="https://goo.gl/maps/x2v97vH9apo" target="_blank" class="btn btn-default btn-xl sr-button">Abrir en el Mapa</a>
                <br/><br/>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1406.1626768401236!2d-71.61529233577804!3d-33.044951697907244!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9689e0d76107fd55%3A0x77baf68d119f6eeb!2sDuoc+Uc!5e0!3m2!1ses-419!2scl!4v1526919022550" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </aside>

    <section>
        <div class="container" id="contacto">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">¡Contáctanos!</h2>
                    <hr class="primary">
                    <p>
                        ¿Tienes alguna duda sobre la atención médica?<br/>
                        ¿Quieres conocer cuanto costará la consulta médica?<br/><br/>
                        Todas las dudas/consultas que tengas, las puedes hacer directamente en la clínica o simplemente llamando al número
                        de contacto que te dejamos abajo. Puedes envíarnos un correo electrónico ante cualquier eventualidad.
                        
                    </p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>032-2626789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="contacto@clinicaduoc.cl">contacto@clinicaduoc.cl</a></p>
                </div>
            </div>
        </div>
    </section>
    
    <aside class="bg-dark">
        <div class="container text-center">
                <img src="img/estudia.png" alt="" align="center"><br/>
                <img src="img/acreditado.png" alt="" align="center">&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="img/DUOC.png" alt="">
            
        </div>
    </aside>

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