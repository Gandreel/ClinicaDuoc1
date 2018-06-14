<%-- 
    Document   : vistaPersAdm
    Created on : 22-may-2018, 19:51:16
    Author     : Pancho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clínica DuocUC | Personal Administrativo</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="<c:url value="js/funcionesAdm.js" /> "></script>
        <script language="javascript" type="text/javascript"> function redirect(URL) {
                document.location = URL;
                return false;
            }</script>
    </head>
    <body id="body2">
        <div class="container">
            <div class="row">
                <h1 style="color:black" class="text-left"><b>Bienvenido, Usuario Administrativo</b></h1>
                <a href="<c:url value="/login.htm" />" class="text-right"><b>Cerrar Sesión</b></a>
                <div class="text-center">
                    <a style="color:white; background-color: rgba(33, 33, 33, 0.5);" href="javascript:void(0);" onclick="mensaje();">
                        <b>¡ATENCIÓN! -> LEER ANTES DE CONTINUAR <-</b>
                    </a>
                </div>
                <hr style="border-color:red; height: 2px; color:red; clear: both"/>
                <br/>
                <ul class="nav nav-pills navbar-collapse">
                    <li role="presentation" class="active"><a href="#pacientes">Pacientes</a></li>
                    <li role="presentation"><a href="#fichas">Fichas Médicas</a></li>
                </ul>
                <br/>
                <br/>

                <!-- Datos sobre los Pacientes Registrados -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Pacientes</h2>
                </div>
                <section id="pacientes">
                    <p>
                        <a href="<c:url value="paciente.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Agregar Nuevo Paciente</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th class="text-center">ID Paciente</th>
                                <th class="text-center">ID Adm Creador</th>
                                <th class="text-center">Rut</th>
                                <th class="text-center">Nombre</th>
                                <th class="text-center">Apellido Paterno</th>
                                <th class="text-center">Apellido Materno</th>
                                <th class="text-center">Fecha de Nacimiento</th>
                                <th class="text-center">Sexo</th>
                                <th class="text-center">Grupo Sanguineo</th>
                                <th class="text-center">Estado Civil</th>
                                <th class="text-center">Domicilio</th>
                                <th class="text-center">Teléfono Contacto</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${datosPa}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.idpaciente}"/></td>
                                    <td class="text-center"><c:out value="${dato.idPersAdm}"/></td>
                                    <td class="text-center"><c:out value="${dato.rut}"/></td>
                                    <td class="text-center"><c:out value="${dato.nombre}"/></td>
                                    <td class="text-center"><c:out value="${dato.apellidoP}"/></td>
                                    <td class="text-center"><c:out value="${dato.apellidoM}"/></td>
                                    <td class="text-center"><c:out value="${dato.fecha_nacimiento}"/></td>
                                    <td class="text-center"><c:out value="${dato.sexo}"/></td>
                                    <td class="text-center"><c:out value="${dato.grupo_sanguineo}"/></td>
                                    <td class="text-center"><c:out value="${dato.estado_civil}"/></td>
                                    <td class="text-center"><c:out value="${dato.domicilio}"/></td>
                                    <td class="text-center"><c:out value="${dato.fono}"/></td>
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

                
                <!-- Datos sobre las Fichas Registradas -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Fichas Médicas</h2>
                </div>
                <section id="fichas">
                    <p>
                        <a href="<c:url value="ficha.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Agregar Nueva Ficha</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th class="text-center">ID</th>
                                <th class="text-center">ID Paciente</th>
                                <th class="text-center">Fecha Ingreso</th>
                                <th class="text-center">Nivel de Urgencia</th>
                                <th class="text-center">Motivo de Consulta</th>
                                <th class="text-center">Nombre Acompañante</th>
                                <th class="text-center">Apellido Acompañante</th>
                                <th class="text-center">Rut Acompañante</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${datosFi}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.numFicha}"/></td>
                                    <td class="text-center"><c:out value="${dato.idpaciente}"/></td>
                                    <td class="text-center"><c:out value="${dato.fecha}"/></td>
                                    <td class="text-center"><c:out value="${dato.nivel_urgencia}"/></td>
                                    <td class="text-center"><c:out value="${dato.motivo_consulta}"/></td>
                                    <td class="text-center"><c:out value="${dato.nombre_acom}"/></td>
                                    <td class="text-center"><c:out value="${dato.apellidoP_acom}"/></td>
                                    <td class="text-center"><c:out value="${dato.rut_acom}"/></td>
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