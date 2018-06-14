<%-- 
    Document   : vistaAdmin
    Created on : 12-nov-2017, 20:02:24
    Author     : Pancho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica DuocUC | Administración</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="<c:url value="js/funciones.js" /> "></script>
        <script language="javascript" type="text/javascript"> function redirect(URL) {
                document.location = URL;
                return false;
            }</script>
    </head>
    <body id="body2">
        <div class="container">
            <div class="row">
                <h1 style="color:black" class="text-left"><b>Bienvenido, Administrador</b></h1>
                <a href="<c:url value="/login.htm" />" class="text-right"><b>Cerrar Sesión</b></a>
                <div class="text-center">
                    <a style="color:white; background-color: rgba(33, 33, 33, 0.5);" href="javascript:void(0);" onclick="mensaje();">
                        <b>¡ATENCIÓN! -> LEER ANTES DE CONTINUAR <-</b>
                    </a>
                </div>
                <hr style="border-color:red; height: 2px; color:red; clear: both"/>
                <div align="center">
                    <img src="img/adminHeader.png" class="img-fluid" alt="Responsive image" width="750" height="100">
                </div>
                
                <br/>
                <ul class="nav nav-pills navbar-collapse">
                    <li role="presentation" class="active"><a href="#medicos">Personal Médico</a></li>
                    <li role="presentation"><a href="#admin">Personal Administrativo</a></li>
                </ul>
                <br/>
                <br/>

                <!-- Datos sobre los Especialistas Registrados -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Personal Médico</h2>
                </div>
                <section id="medic">
                    <p>
                        <a href="<c:url value="especialista.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Agregar Nuevo Personal Médico</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th class="text-center">ID</th>
                                <th class="text-center">ID Especialidad</th>
                                <th class="text-center">ID Adm a Cargo</th>
                                <th class="text-center">Rut</th>
                                <th class="text-center">Nombre</th>
                                <th class="text-center">Apellido Paterno</th>
                                <th class="text-center">Apellido Materno</th>
                                <th class="text-center">Teléfono</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${datosEsp}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.idespecialista}"/></td>
                                    <td class="text-center"><c:out value="${dato.id_esp}"/></td>
                                    <td class="text-center"><c:out value="${dato.idUser}"/></td>
                                    <td class="text-center"><c:out value="${dato.rut}"/></td>
                                    <td class="text-center"><c:out value="${dato.nombre}"/></td>
                                    <td class="text-center"><c:out value="${dato.apellidoP}"/></td>
                                    <td class="text-center"><c:out value="${dato.apellidoM}"/></td>
                                    <td class="text-center"><c:out value="${dato.fono}"/></td>
                                    <td class="text-center"><c:out value="${dato.email}"/></td>
                                    <td class="text-center"><a href="<c:url value="editarEspecialista.htm?id=${dato.idespecialista}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:white"></span></a> &nbsp;&nbsp;&nbsp;
                                        <a href="<c:url value="eliminarEspecialista.htm?id=${dato.idespecialista}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></span></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </section>

                <br/>
                <br/>
                <br/>
                <br/>
                <br/>

                
                <!-- Datos sobre el Personal Administrativo Registrado -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Personal Administrativo</h2>
                </div>
                <section id="admin">
                    <p>
                        <a href="<c:url value="administrativo.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Agregar Nuevo Personal Administrativo</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th class="text-center">ID</th>
                                <th class="text-center">Cargo</th>
                                <th class="text-center">ID Adm a Cargo</th>
                                <th class="text-center">Rut</th>
                                <th class="text-center">Nombre</th>
                                <th class="text-center">Apellido Paterno</th>
                                <th class="text-center">Apellido Materno</th>
                                <th class="text-center">Teléfono</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${datosAd}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.idPersAdm}"/></td>
                                    <td class="text-center"><c:out value="${dato.idcargo}"/></td>
                                    <td class="text-center"><c:out value="${dato.idUser}"/></td>
                                    <td class="text-center"><c:out value="${dato.rut}"/></td>
                                    <td class="text-center"><c:out value="${dato.nombre}"/></td>
                                    <td class="text-center"><c:out value="${dato.apellidoP}"/></td>
                                    <td class="text-center"><c:out value="${dato.apellidoM}"/></td>
                                    <td class="text-center"><c:out value="${dato.fono}"/></td>
                                    <td class="text-center"><c:out value="${dato.email}"/></td>
                                    <td class="text-center"><a href="<c:url value="editarAdministrativo.htm?id=${dato.idPersAdm}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:white"></span></a> &nbsp;&nbsp;&nbsp;
                                        <a href="<c:url value="eliminarAdministrativo.htm?id=${dato.idPersAdm}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></span></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </section>

                <br/>
                <br/>
                <br/>
                <br/>
                <br/>

                <!-- Datos sobre las atenciones realizadas -->
                
            </div>
        </div>
                    
        <style>
            #body2{
                background: url(img/fondoLogin.jpg) no-repeat center center fixed;
                }
        </style>
    </body>
</html>