<%-- 
    Document   : ficha
    Created on : 23-may-2018, 0:11:55
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Clinica DuocUC | Registro de Ficha Médica</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body id="body2">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaPersAdm.htm">Volver a Administración</a>
                <li class="active">Agregar Ficha Médica</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/fichaLogo.png" class="img-fluid" alt="Responsive image" width="300" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos con (*) son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="ficha">
                        <h1>Agregar Ficha Médica</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>

                        <p>
                            <form:label path="fecha">Fecha (*)</form:label>
                            <form:input path="fecha" cssClass="form-control" placeholder="dd/MM/aaaa"/>
                            <form:errors path="fecha"/>
                        </p>
                        <p>
                            <form:label path="nivelUrgencia">Nivel de Urgencia (*)</form:label>
                            <form:select path="nivelUrgencia" cssClass="form-control">
                                <form:option value="Seleccione">Seleccione...</form:option>
                                <form:options items="${nivelUrgenciaLista}"/>
                            </form:select>
                            <form:errors path="nivelUrgencia" />
                        </p>
                        <p>
                            <form:label path="motivo">Motivo de Consulta (*)</form:label>
                            <form:textarea path="motivo" cssClass="form-control" rows="3" placeholder="Ingrese el motivo de consulta.."/>
                            <form:errors path="motivo"/>
                        </p>
                        <p>
                            <form:label path="nombreAcom">Nombre Acompañante</form:label>
                            <form:input path="nombreAcom" cssClass="form-control" placeholder="Nombre Acompañante" />
                        </p>
                        <p>
                            <form:label path="apellidoP">Apellido Paterno Acompañante</form:label>
                            <form:input path="apellidoP" cssClass="form-control" placeholder="Apellido Paterno Acompañante" />
                        </p>
                        <p>
                            <form:label path="apellidoM">Apellido Materno Acompañante</form:label>
                            <form:input path="apellidoM" cssClass="form-control" placeholder="Apellido Materno Acompañante" />
                        </p>
                        <p>
                            <form:label path="rutAcom">Rut Acompañante</form:label>
                            <form:input path="rutAcom" cssClass="form-control" placeholder="11.111.111-1" />
                        </p>
                        <h3 align="center">Tipo Parentesco</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">ID</th>
                                        <th class="col-sm-4 text-center">Parentesco</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">1</td>
                                        <td class="text-center">Familiar</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">2</td>
                                        <td class="text-center">Amigo</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">3</td>
                                        <td class="text-center">Conocido</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">4</td>
                                        <td class="text-center">Otro</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p>
                            <form:label path="idparen">ID Parentesco</form:label>
                            <form:input path="idparen" cssClass="form-control"/>
                        </p>
                        <p>
                            <form:label path="fono">Teléfono Acompañante </form:label>
                            <form:input path="fono" cssClass="form-control" placeholder="Ej: 09-11111111"/>
                        </p>
                        <h3 align="center">Paciente</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">ID Paciente</th>
                                        <th class="col-sm-4 text-center">Nombre Paciente</th>
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
                            <form:label path="idpaciente">ID del Paciente </form:label>
                            <form:input path="idpaciente" cssClass="form-control"/>
                            <form:errors path="idpaciente" />
                        </p>
                        <hr/>
                        <input type="submit" value="Agregar Ficha Médica" class="form-control btn btn-success"/>
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