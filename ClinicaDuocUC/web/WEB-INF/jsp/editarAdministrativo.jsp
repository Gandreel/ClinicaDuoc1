<%-- 
    Document   : editarAdministrativo
    Created on : 22-may-2018, 12:21:42
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Clinica DuocUC | Registro de Personal Administrativo</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body background="img/bgForm.jpg">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaAdmin.htm">Volver a Administración</a>
                <li class="active">Actualizar Personal Administrativo</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/adminHeader.png" class="img-fluid" alt="Responsive image" width="771" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos con (*) son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="administrativo">
                        <h1>Actualizar a un Personal Administrativo</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>

                        <p>
                            <form:label path="rut">Rut (*)</form:label>
                            <form:input path="rut" cssClass="form-control" placeholder="11.111.111-1"/>
                            <form:errors path="rut"/>
                        </p>
                        <p>
                            <form:label path="nombre">Nombre (*)</form:label>
                            <form:input path="nombre" cssClass="form-control" placeholder="Nombre" />
                            <form:errors path="nombre" />
                        </p>
                        <p>
                            <form:label path="apellidoP">Apellido Paterno (*)</form:label>
                            <form:input path="apellidoP" cssClass="form-control" placeholder="Apellido Paterno" />
                            <form:errors path="apellidoP" />
                        </p>
                        <p>
                            <form:label path="apellidoM">Apellido Materno (*)</form:label>
                            <form:input path="apellidoM" cssClass="form-control" placeholder="Apellido Materno" />
                            <form:errors path="apellidoM" />
                        </p>
                        <p>
                            <form:label path="fono">Teléfono (*)</form:label>
                            <form:input path="fono" cssClass="form-control" placeholder="Ej: 09-11111111"/>
                            <form:errors path="fono"/>
                        </p>
                        <p>
                            <form:label path="email">E-mail (*)</form:label>
                            <form:input path="email" cssClass="form-control" placeholder="email@ejemplo.com" />
                            <form:errors path="email"/>
                        </p>
                        <h3 align="center">Cargos Disponibles</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">ID</th>
                                        <th class="col-sm-4 text-center">Cargo</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">1</td>
                                        <td class="text-center">Directiva</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">2</td>
                                        <td class="text-center">Secretariado</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">3</td>
                                        <td class="text-center">Seguridad</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">4</td>
                                        <td class="text-center">Aseo</td>
                                    </tr>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">5</td>
                                        <td class="text-center">Otro</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <p>
                            <form:label path="idcargo">ID del Cargo (*)</form:label>
                            <form:input path="idcargo" cssClass="form-control"/>
                            <form:errors path="idcargo"/>
                        </p>
                        <h3 align="center">Administradores Disponibles</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">ID</th>
                                        <th class="col-sm-4 text-center">Usuario Administrador</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">1</td>
                                        <td class="text-center">Admin</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p>
                            <form:label path="idUser">ID Adm a Cargo (*)</form:label>
                            <form:input path="idUser" cssClass="form-control"/>
                            <form:errors path="idUser"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Actualizar Personal Administrativo" class="form-control btn btn-success"/>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>