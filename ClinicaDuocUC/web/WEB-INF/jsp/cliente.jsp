<%-- 
    Document   : cliente
    Created on : 12-nov-2017, 23:18:12
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Veterinaria Pet Land | Registro de Cliente</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body background="img/bgForm.jpg">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaAdmin.htm">Volver a Administración</a>
                <li class="active">Agregar Cliente</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/FormularioConsulta.png" class="img-fluid" alt="Responsive image" width="771" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos con (*) son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="cliente">
                        <h1>Agregar a un Cliente</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>

                        <p>
                            <form:label path="rut">Rut (*)</form:label>
                            <form:input path="rut" cssClass="form-control" placeholder="11.111.111-1"/>
                            <form:errors path="rut"/>
                        </p>
                        <p>
                            <form:label path="nombre">Nombre (*)</form:label>
                            <form:input path="nombre" cssClass="form-control" placeholder="Nombre Apellidos" />
                            <form:errors path="nombre" />
                        </p>
                        <p>
                            <form:label path="direccion">Dirección (*)</form:label>
                            <form:input path="direccion" cssClass="form-control" placeholder="Dirección" />
                            <form:errors path="direccion" />
                        </p>
                        <p>
                            <form:label path="correo">E-mail (*)</form:label>
                            <form:input path="correo" cssClass="form-control" placeholder="email@ejemplo.com" />
                            <form:errors path="correo"/>
                        </p>
                        <p>
                            <form:label path="telefono">Teléfono (*)</form:label>
                            <form:input path="telefono" cssClass="form-control"/>
                            <form:errors path="telefono"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Agregar Cliente" class="form-control"/>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
