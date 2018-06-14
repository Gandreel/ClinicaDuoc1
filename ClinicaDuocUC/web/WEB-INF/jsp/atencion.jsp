<%-- 
    Document   : atencion
    Created on : 23-may-2018, 10:55:33
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Clinica DuocUC | Registro de Atención</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body id="body2">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaMedico.htm">Volver a Administración</a>
                <li class="active">Agregar Atención Médica</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/fichaLogo.png" class="img-fluid" alt="Responsive image" width="300" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos con (*) son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="atencion">
                        <h1>Agregar Atención Médica</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>
                        <h3 align="center">Fichas Médicas</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">Número Ficha</th>
                                        <th class="col-sm-4 text-center">Paciente</th>
                                        <th class="col-sm-4 text-center">Motivo</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">2</td>
                                        <td class="text-center">Victor Castro Ugarte</td>
                                        <td class="text-center">Golpe en el pie izquierdo, posible fractura/lesión.</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">4</td>
                                        <td class="text-center">Victor Castro Ugarte</td>
                                        <td class="text-center">Dolor de cabeza y náuseas</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p>
                            <form:label path="numFicha">Número de Ficha (*)</form:label>
                            <form:input path="numFicha" cssClass="form-control"/>
                            <form:errors path="numFicha" />
                        </p>
                        <h3 align="center">Especialista Conectado</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">ID Especialista</th>
                                        <th class="col-sm-4 text-center">Nombre</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">2</td>
                                        <td class="text-center">Raul Tapia Andaur</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p>
                            <form:label path="idespecialista">ID Especialista (*)</form:label>
                            <form:input path="idespecialista" cssClass="form-control"/>
                            <form:errors path="idespecialista" />
                        </p>
                        <p>
                            <form:label path="sintoma">Sintomas (*)</form:label>
                            <form:textarea path="sintoma" cssClass="form-control" rows="3" placeholder="Ingrese los sintomas.."/>
                            <form:errors path="sintoma"/>
                        </p>
                        <p>
                            <form:label path="diagnostico">Diagnóstico (*)</form:label>
                            <form:textarea path="diagnostico" cssClass="form-control" rows="3" placeholder="Ingrese su diagnótico.."/>
                            <form:errors path="diagnostico"/>
                        </p>
                        <p>
                            <form:label path="reposo">Reposo (*)</form:label>
                            <form:textarea path="reposo" cssClass="form-control" rows="3" placeholder="Indique si posee o no Reposo.."/>
                            <form:errors path="reposo"/>
                        </p>
                        <p>
                            <form:label path="cantDias">Cantidad de Días </form:label>
                            <form:textarea path="cantDias" cssClass="form-control" rows="3" placeholder="Indique SOLO si posee reposo.."/>
                            <form:errors path="cantDias"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Agregar Atención Médica" class="form-control btn btn-success"/>
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