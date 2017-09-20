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
            <legend>Lista de Vehiculos</legend>
            <br>
            <div style="padding-bottom: 8vh; width: 100%; padding-left: 35%;">
                <input  style="width: 25%;float: left;"type="text" placeholder="ingrese placa">
                <button style="float: left">Buscar</button>
                <form action="../../carServlet?action=redirectLogin" method="post" style="float:right; margin-right: 3%;">
                    <input value="Login"   type="submit"  name="action"  class="largo btn btn-success" style="font-weight: bold;">
                </form>
            </div>            
        </div>
    </center> 
    <center><div class="card-deck">
            <div class="card">
                <img class="card-img-top" src="https://abrilquatrorodas.files.wordpress.com/2017/04/peugeot-208.jpeg?quality=70&strip=info&strip=info" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title"><label>Modelo:</label></h4>
                    <label>Matricula</label><p class="card-text"></p>
                    <label>Marca</label><p class="card-text"></p>
                    <label>Precio</label><p class="card-text"></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-danger">Borrar</a>
                    <a href="#" class="btn btn-warning">Editar</a>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="http://www.elcarrocolombiano.com/wp-content/uploads/2017/03/20170318-TOP-10-CARROS-MAS-VENDIDOS-EN-AMERICA-LATINA-01.jpg" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title"><label>Modelo:</label></h4>
                    <label>Matricula</label><p class="card-text"></p>
                    <label>Marca</label><p class="card-text"></p>
                    <label>Precio</label><p class="card-text"></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-danger">Borrar</a>
                    <a href="#" class="btn btn-warning">Editar</a>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="http://cdn.gmotors.co.uk/news/wp-content/uploads/2013/03/Kia-KV7-Concept-2-650x416.jpg" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title"><label>Modelo:</label></h4>
                    <label>Matricula</label><p class="card-text"></p>
                    <label>Marca</label><p class="card-text"></p>
                    <label>Precio</label><p class="card-text"></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-danger">Borrar</a>
                    <a href="#" class="btn btn-warning">Editar</a>
                </div>
            </div>
        </div></center>

</body>
</html>