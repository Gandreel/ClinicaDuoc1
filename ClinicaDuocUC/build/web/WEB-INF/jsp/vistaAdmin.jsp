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
        <title>Administración | Pet Land</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="<c:url value="js/funciones.js" /> "></script>
        <script language="javascript" type="text/javascript"> function redirect(URL) {
                document.location = URL;
                return false;
            }</script>
    </head>
    <body background="img/header.jpg">
        <div class="container">
            <div class="row">
                <h1 style="color:white" class="text-center"><b>Bienvenido, Administrador</b></h1>
                <div class="text-center">
                    <a href="<c:url value="/login.htm" />"><b>Cerrar Sesión</b></a>
                </div>
                <hr/>
                <br/>
                <div class="text-center">
                    <a style="color:red; background-color: rgba(33, 33, 33, 0.5);" href="javascript:void(0);" onclick="mensaje();">
                        <b>¡ATENCIÓN! -> LEER ANTES DE CONTINUAR <-</b>
                    </a>
                </div>
                <ul class="nav nav-pills navbar-collapse">
                    <li role="presentation" class="active"><a href="#cliente">Cliente</a></li>
                    <li role="presentation"><a href="#mascota">Mascota</a></li>
                    <li role="presentation"><a href="#atencion">Atención</a></li>
                </ul>
                <br/>
                <br/>

                <!-- Datos sobre los clientes Registrados -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Datos Clientes</h2>
                </div>
                <section id="cliente">
                    <p>
                        <a href="<c:url value="cliente.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Agregar Nuevo Cliente</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th>ID</th>
                                <th>Rut</th>
                                <th>Nombre</th>
                                <th>Dirección</th>
                                <th>Correo</th>
                                <th>Teléfono</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datosC}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td><c:out value="${dato.id_cliente}"/></td>
                                    <td><c:out value="${dato.rut}"/></td>
                                    <td><c:out value="${dato.nombre}"/></td>
                                    <td><c:out value="${dato.direccion}"/></td>
                                    <td><c:out value="${dato.correo}"/></td>
                                    <td><c:out value="${dato.telefono}"/></td>
                                    <td><a href="<c:url value="editarCliente.htm?id=${dato.id_cliente}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:white"></span></a> &nbsp;&nbsp;&nbsp;
                                        <a href="<c:url value="eliminar.htm?id_cliente=${dato.id_cliente}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></span></a>
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

                <!-- Datos sobre las mascotas Registrados -->
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Datos Mascotas</h2>
                </div>
                <section id="mascota">
                    <p>
                        <a href="<c:url value="mascota.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Agregar Nueva Mascota</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th>ID Mascota</th>
                                <th>ID del Cliente</th>
                                <th>Nombre</th>
                                <th>Sexo</th>
                                <th>Especie</th>
                                <th>Raza</th>
                                <th>Fecha Registro</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${datosM}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.id_mascota}"/></td>
                                    <td class="text-center"><c:out value="${dato.id_cliente}"/></td>
                                    <td><c:out value="${dato.nombre}"/></td>
                                    <td><c:out value="${dato.sexo}"/></td>
                                    <td><c:out value="${dato.especie}"/></td>
                                    <td><c:out value="${dato.raza}"/></td>
                                    <td><c:out value="${dato.fecha_registro}"/></td>
                                    <td><a href="<c:url value="editarMascota.htm?id=${dato.id_mascota}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:white"></span></a> &nbsp;&nbsp;&nbsp;
                                        <a href="<c:url value="eliminarMascota.htm?id_mascota=${dato.id_mascota}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></span></a>
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
                <div class="text-center">
                    <h2 style="color:white; background-color: rgba(33, 33, 33, 0.5);">Datos de Atenciones</h2>
                </div>
                <section id="atencion">
                    <p>
                        <a href="<c:url value="atencion.htm" />" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Agregar Nueva Atención</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr style="color:white; background-color: rgba(248, 50, 50, 0.5);">
                                <th>ID Atención</th>
                                <th>ID Mascota</th>
                                <th>Fecha de Atención</th>
                                <th>Diagnóstico</th>
                                <th>Cuidados</th>
                                <th>Receta</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datosA}" var="dato">
                                <tr style="color:white; background-color: rgba(30, 135, 33, 0.5);">
                                    <td class="text-center"><c:out value="${dato.id_atencion}"/></td>
                                    <td class="text-center"><c:out value="${dato.id_mascota}"/></td>
                                    <td><c:out value="${dato.diagnostico}"/></td>
                                    <td><c:out value="${dato.cuidados}"/></td>
                                    <td><c:out value="${dato.receta}"/></td>
                                    <td><c:out value="${dato.fecha_atencion}"/></td>
                                    <td><a href="<c:url value="editarAtencion.htm?id=${dato.id_atencion}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:white"></span></a> &nbsp;&nbsp;&nbsp;
                                        <a href="<c:url value="eliminarAtencion.htm?id_atencion=${dato.id_atencion}" />"><span class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></span></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </section>
            </div>
        </div>
    </body>
</html>