<%-- 
    Document   : login
    Created on : 12-nov-2017, 18:36:30
    Author     : Pancho
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica DuocUC | Ingreso Personal Médico y Administrativo</title>

        <link href="css/login.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container" align="center">
            <div class="panel-heading">
                <h1 style="color:black">Ingreso solo para Personal Médico y Administrativo</h1>
            </div>
            <div class="row" id="pwd-container">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center" align="center">
                    <section class="login-form">
                        <form:form method="post" action="#" role="login">
                            <img src="img/logoLogin.png" class="img-responsive" alt="" />
                            <input type="text" name="userName" placeholder="Usuario" required class="form-control input-lg" />
                            <input type="password" name="password" class="form-control input-lg" placeholder="Contraseña" required="" />
                            <div class="pwstrength_viewport_progress"></div>
                            <button type="submit" value="Ingresar" class="btn btn-lg btn-primary btn-block">Ingresar</button>
                            <div style="color: red">${error}</div>
                        </form:form>
                        
                        <div class="form-links">
                            <a href="inicio.htm">Volver a la página de Inicio</a>
                        </div>
                    </section>  
                </div>

                <div class="col-md-4"></div>
            </div>  
        </div>
    </body>
</html>