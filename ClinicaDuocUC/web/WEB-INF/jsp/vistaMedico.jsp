<%-- 
    Document   : vistaMedico
    Created on : 23-may-2018, 10:56:42
    Author     : Pancho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica DuocUC | Personal Médico</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="<c:url value="js/funcionesMedic.js" /> "></script>
        <script language="javascript" type="text/javascript"> function redirect(URL) {
                document.location = URL;
                return false;
            }</script>
    </head>
    <body id="body2">
        <div class="container">
            <div class="row">
                <h1 style="color:black" class="text-left"><b>Bienvenido, Especialista</b></h1>
                <a href="<c:url value="/login.htm" />" class="text-right"><b>Cerrar Sesión</b></a>
                <div class="text-center">
                    <a style="color:white; background-color: rgba(33, 33, 33, 0.5);" href="javascript:void(0);" onclick="mensaje();">
                        <b>¡ATENCIÓN! -> LEER ANTES DE CONTINUAR <-</b>
                    </a>
                </div>
                <hr style="border-color:red; height: 2px; color:red; clear: both"/>
                <br/>
                <ul class="nav nav-pills navbar-collapse">
                    <li role="presentation" class="active"><a href="#atencion">Atención</a></li>
                    <li role="presentation"><a href="#receta">Receta</a></li>
                </ul>
                <br/>
                <br/>

                <!-- Datos sobre las Atenciones Registradas -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Atenciones</h2>
                </div>
                <section id="atencion">
                    <p>
                        <a href="<c:url value="atencion.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Agregar Nueva Atención Médica</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th class="text-center">ID Atención</th>
                                <th class="text-center">Número Ficha</th>
                                <th class="text-center">ID Especialista</th>
                                <th class="text-center">Síntoma</th>
                                <th class="text-center">Diagnóstico</th>
                                <th class="text-center">Reposo</th>
                                <th class="text-center">Cantidad días</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${datosAte}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.id_atencion}"/></td>
                                    <td class="text-center"><c:out value="${dato.numFicha}"/></td>
                                    <td class="text-center"><c:out value="${dato.idespecialista}"/></td>
                                    <td class="text-center"><c:out value="${dato.sintoma}"/></td>
                                    <td class="text-center"><c:out value="${dato.diagnostico}"/></td>
                                    <td class="text-center"><c:out value="${dato.reposo}"/></td>
                                    <td class="text-center"><c:out value="${dato.cant_dias}"/></td>
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

                
                <!-- Datos sobre las Recetas Registradas -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Recetas</h2>
                </div>
                <section id="receta">
                    <p>
                        <a href="<c:url value="receta.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Agregar Receta Médica</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th class="text-center">ID Receta</th>
                                <th class="text-center">ID Atención</th>
                                <th class="text-center">Medicamento</th>
                                <th class="text-center">Dosis</th>
                                <th class="text-center">Cantidad Días</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${datosRe}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.id_receta}"/></td>
                                    <td class="text-center"><c:out value="${dato.id_atencion}"/></td>
                                    <td class="text-center"><c:out value="${dato.medicamento}"/></td>
                                    <td class="text-center"><c:out value="${dato.dosis}"/></td>
                                    <td class="text-center"><c:out value="${dato.cant_dias}"/></td>
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
                
            </div>
        </div>
                    
        <style>
            #body2{
                background: url(img/fondoLogin.jpg) no-repeat center center fixed;
                }
        </style>
    </body>
</html>