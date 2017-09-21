<%-- 
    Document   : searchCar
    Created on : 20-sep-2017, 22:27:43
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form action="../../accountServlet?action=redirectListCar" method="post" style="background: transparent; margin-top: 10px; margin-left: 20%;">
            <input  value="Lista de Carros"   type="submit"  name="action"  class="btn btn-success" style="font-weight: bold;">
        </form>
        <div class="card">
            <div class="card-body">
                <h4 class="card-title"><label>${carS.brand}</label></h4>
                <label>${carS.model}</label><p class="card-text"></p>
                <label>${carS.price}</label><p class="card-text"></p>
                <label>${carS.plate}</label><p class="card-text"></p> 
            </div>
            <hr/>
        </div>
    </body>
</html>
