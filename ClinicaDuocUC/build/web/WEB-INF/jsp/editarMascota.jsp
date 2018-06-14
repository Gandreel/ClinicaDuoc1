<%-- 
    Document   : editarMascota
    Created on : 15-nov-2017, 20:10:23
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Veterinaria Pet Land | Edición de Mascotas</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body background="img/bgForm.jpg">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaAdmin.htm">Volver a Administración</a>
                <li class="active">Editar Mascota</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/FormularioConsulta.png" class="img-fluid" alt="Responsive image" width="771" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="mascota">
                        <h1>Editar mascota</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>

                        <p>
                            <form:label path="nombre">Nombre</form:label>
                            <form:input path="nombre" cssClass="form-control" placeholder="Cachupín"/>
                            <form:errors path="nombre"/>
                        </p>
                        <p>
                            <form:label path="sexo">Sexo</form:label>
                            <form:select path="sexo" cssClass="form-control">
                                <form:option value="Seleccione">Seleccione...</form:option>
                                <form:options items="${sexoLista}"/>
                            </form:select>
                            <form:errors path="sexo" />
                        </p>
                        <p>
                            <form:label path="especie">Especie</form:label>
                            <form:select path="especie" cssClass="form-control">
                                <form:option value="Seleccione">Seleccione...</form:option>
                                <form:options items="${especieLista}"/>
                            </form:select>
                            <form:errors path="especie" />
                        </p>
                        <p>
                            <form:label path="raza">Raza</form:label>
                            <form:input path="raza" cssClass="form-control" placeholder="Solo si es PERRO o GATO"/>
                            <form:errors path="raza"/>
                        </p>
                        <p>
                            <form:label path="fechaRegistro">Fecha de Registro</form:label>
                            <form:input path="fechaRegistro" cssClass="form-control" placeholder="dd/MM/aaaa"/>
                            <form:errors path="fechaRegistro"/>
                        </p>
                        <p>
                            <form:label path="idCliente">Id Cliente</form:label>
                            <form:input path="idCliente" cssClass="form-control"/>
                            <form:errors path="idCliente"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Editar Mascota" class="form-control"/>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
