<%-- 
    Document   : paciente
    Created on : 22-may-2018, 20:38:57
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Clinica DuocUC | Registro de Paciente</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body id="body2">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaPersAdm.htm">Volver a Administración</a>
                <li class="active">Agregar Paciente</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/pacienteLogo.png" class="img-fluid" alt="Responsive image" width="300" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos con (*) son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="paciente">
                        <h1>Agregar a un Paciente</h1>
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
                            <form:label path="fechaNacimiento">Fecha de Nacimiento (*)</form:label>
                            <form:input path="fechaNacimiento" cssClass="form-control" placeholder="dd/MM/aaaa" />
                            <form:errors path="fechaNacimiento" />
                        </p>
                        <p>
                            <form:label path="sexo">Sexo (*)</form:label>
                            <form:select path="sexo" cssClass="form-control">
                                <form:option value="Seleccione">Seleccione...</form:option>
                                <form:options items="${sexoLista}"/>
                            </form:select>
                            <form:errors path="sexo" />
                        </p>
                        <p>
                            <form:label path="grupoSanguineo">Grupo Sanguineo (*)</form:label>
                            <form:select path="grupoSanguineo" cssClass="form-control">
                                <form:option value="Seleccione">Seleccione...</form:option>
                                <form:options items="${grupoSanguineoLista}"/>
                            </form:select>
                            <form:errors path="grupoSanguineo" />
                        </p>
                        <p>
                            <form:label path="estadoCivil">Estado Civil (*)</form:label>
                            <form:select path="estadoCivil" cssClass="form-control">
                                <form:option value="Seleccione">Seleccione...</form:option>
                                <form:options items="${estadoCivilLista}"/>
                            </form:select>
                            <form:errors path="estadoCivil" />
                        </p>
                        <p>
                            <form:label path="domicilio">Domicilio (*)</form:label>
                            <form:input path="domicilio" cssClass="form-control" placeholder="calle, ciudad, comuna, región" />
                            <form:errors path="domicilio"/>
                        </p>
                        <p>
                            <form:label path="fono">Teléfono (*)</form:label>
                            <form:input path="fono" cssClass="form-control" placeholder="Ej: 09-11111111"/>
                            <form:errors path="fono"/>
                        </p>
                        <h3 align="center">Personal Administrativo Conectado</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                        <th class="col-sm-4 text-center">ID</th>
                                        <th class="col-sm-4 text-center">Nombre Administrador</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                        <td class="text-center">1</td>
                                        <td class="text-center">Tatiana Peña González</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p>
                            <form:label path="idPersAdm">ID Personal Adm a Cargo (*)</form:label>
                            <form:input path="idPersAdm" cssClass="form-control"/>
                            <form:errors path="idPersAdm"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Agregar Paciente" class="form-control btn btn-success"/>
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