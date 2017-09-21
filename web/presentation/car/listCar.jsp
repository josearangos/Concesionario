<%-- 
    Document   : listCar
    Created on : 17/09/2017, 09:43:03 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="car/css/listCar.css">
        <link rel="stylesheet" type="text/css" href="css/listCar.css">
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    </head>
    <body>
    <center>
        <div class="label">
            <legend>LISTA DE VEHÍCULOS</legend>
            <br>
            <div style="padding-bottom: 8vh; width: 100%; padding-left: 35%;">
                <input  style="width: 25%;float: left;"type="text" placeholder="ingrese placa">
                <button style="float: left">Buscar</button>
                
                <form action="../../carServlet?action=list" method="post" style="float:right; margin-right: 3%;">
                    <input value="LISTAR" type="submit" name="action" class="btn btn-success" style="font-weight: bold;">
                </form>

            </div>            
        </div>
    </center>

    <center>
        <div class="card-deck">
            <c:forEach var="c" items="${cars}">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"><label>${c.brand}</label></h4>
                        <label>${c.model}</label><p class="card-text"></p>
                        <label>${c.price}</label><p class="card-text"></p>
                        <label>${c.plate}</label><p class="card-text"></p> 
                    </div>
                    <div class="card-footer">
                        <a id="edit" href="../../carServlet?action=update&id=${c.plate}" class="btn btn-warning">Editar</a>
                        <a id="delete" onclick="return confirm('¿Está seguro?')" href="../../carServlet?action=delete&id=${c.plate}" class="btn btn-danger">Borrar</a>
                    </div>
                    <hr/>
                </div>
            </c:forEach>
        </div>
    </center>    

</body>
</html>