<%-- 
    Document   : formulario
    Created on : 11-nov-2017, 19:08:48
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Veterinaria Pet Land | Formulario de Consulta</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body background="img/bgForm.jpg">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/inicio.htm"/>">Volver a Inicio</a></li>
                <li class="active">Formulario Consulta</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/FormularioConsulta.png" class="img-fluid" alt="Responsive image" width="771" height="250"> <br/>
                    </div>
                    <h3>Para cualquier tipo de consulta veterinaria, debes llenar el formulario:</h3>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="formulario">
                        <h1>Formulario para Consulta</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>

                        <p>
                            <form:label path="nombre">Nombre</form:label>
                            <form:input path="nombre" cssClass="form-control" placeholder="Nombre Apellidos" />
                            <form:errors path="nombre" />
                        </p>
                        <p>
                            <form:label path="telefono">Teléfono</form:label>
                            <form:input path="telefono" cssClass="form-control" placeholder="Ejemplo: 9-999-999-99"/>
                            <form:errors path="telefono"/>
                        </p>
                        <p>
                            <form:label path="correo">E-mail</form:label>
                            <form:input path="correo" cssClass="form-control" placeholder="email@ejemplo.com" />
                            <form:errors path="correo"/>
                        </p>
                        <p>
                            <form:label path="mascota">Tipo de Mascota</form:label>
                            <form:select path="mascota" cssClass="form-control">
                                <form:option value="seleccione">Seleccione...</form:option>
                                <form:options items="${mascotaLista}"/>
                            </form:select>
                            <form:errors path="mascota"/>
                        </p>
                        <p>
                            <form:label path="consulta">Consulta</form:label>
                            <form:textarea path="consulta" cssClass="form-control" rows="3" placeholder="Ingrese su consulta.."/>
                            <form:errors path="consulta"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Envíar" class="form-control"/>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
