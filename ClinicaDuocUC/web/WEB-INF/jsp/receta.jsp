<%-- 
    Document   : receta
    Created on : 23-may-2018, 11:34:24
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Clinica DuocUC | Registro de Receta</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body id="body2">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaMedico.htm">Volver a Administración</a>
                <li class="active">Agregar Receta Médica</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/fichaLogo.png" class="img-fluid" alt="Responsive image" width="300" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos con (*) son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="receta">
                        <h1>Agregar Receta Médica</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>
                        <h3 align="center">Atenciones</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">ID Atención</th>
                                        <th class="col-sm-4 text-center">Paciente</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">1</td>
                                        <td class="text-center">Victor Castro Ugarte</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p>
                            <form:label path="idAtencion">ID Atención (*)</form:label>
                            <form:input path="idAtencion" cssClass="form-control"/>
                            <form:errors path="idAtencion" />
                        </p>
                        <p>
                            <form:label path="medicamento">Medicamento (*)</form:label>
                            <form:input path="medicamento" cssClass="form-control"/>
                            <form:errors path="medicamento" />
                        </p>
                        <p>
                            <form:label path="dosis">Dosis (*)</form:label>
                            <form:input path="dosis" cssClass="form-control"/>
                            <form:errors path="dosis" />
                        </p>
                        <p>
                            <form:label path="cantDias">Cantidad Días (*)</form:label>
                            <form:input path="cantDias" cssClass="form-control"/>
                            <form:errors path="cantDias" />
                        </p>
                        <hr/>
                        <input type="submit" value="Agregar Receta Médica" class="form-control btn btn-success"/>
                    </form:form>
                </div>
            </div>
        </div>
        <style>
            #body2{
                background: url(img/fondoLogin.jpg) no-repeat center center fixed;
                }
        </style>
    </body>
</html>