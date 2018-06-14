<%-- 
    Document   : atencion
    Created on : 15-nov-2017, 23:04:03
    Author     : Pancho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Veterinaria Pet Land | Registro de Atenciones</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body background="img/bgForm.jpg">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="vistaAdmin.htm">Volver a Administración</a>
                <li class="active">Agregar Atención</li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">
                        <img src="img/FormularioConsulta.png" class="img-fluid" alt="Responsive image" width="771" height="250"> <br/>
                    </div>
                    <h4>Recuerde que todos los datos son OBLIGATORIOS.</h4>
                </div>
                <div class="panel-body">
                    <form:form methot="POST" commandName="atencion">
                        <h1>Agregar una Atención</h1>
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>

                        <p>
                            <form:label path="diagnostico">Diagnóstico (*)</form:label>
                            <form:textarea path="diagnostico" cssClass="form-control" rows="3" placeholder="Ingrese el diagnóstico.."/>
                            <form:errors path="diagnostico"/>
                        </p>
                        <p>
                            <form:label path="cuidados">Cuidados (*)</form:label>
                            <form:textarea path="cuidados" cssClass="form-control" rows="3" placeholder="Ingrese los cuidados.." />
                            <form:errors path="cuidados" />
                        </p>
                        <p>
                            <form:label path="receta">Receta (*)</form:label>
                            <form:textarea path="receta" cssClass="form-control" rows="3" placeholder="Ingresar receta.." />
                            <form:errors path="receta" />
                        </p>
                        <p>
                            <form:label path="fechaAtencion">Fecha Atención (*)</form:label>
                            <form:input path="fechaAtencion" cssClass="form-control" placeholder="dd/MM/aaaa" />
                            <form:errors path="fechaAtencion"/>
                        </p>
                        <p>
                            <form:label path="idMascota">ID Mascota</form:label>
                            <form:input path="idMascota" cssClass="form-control"/>
                            <form:errors path="idMascota"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Agregar Atención" class="form-control"/>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
