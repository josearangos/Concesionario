<%-- 
    Document   : newClient
    Created on : 17/09/2017, 10:26:39 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/newClient.css">
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    </head>
    <body>
    <center><legend style="margin-top: 5%; font-size: 45px; color: white;">CriolloSolutions</legend></center>
    <center><form>
            <fieldset>

                <!-- Form Name -->
                <legend>Crear Cliente</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">ID</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="text" placeholder="Digite su ID" class="form-control input-md" minlength="9" required pattern="[A-Za-z0-9]+">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Nombre</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="text" placeholder="Digite su Nombre" class="form-control input-md" minlength="1" required pattern="[a-z]">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Apellido</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="text" placeholder="Digite su Apellido" class="form-control input-md" minlength="1" required pattern="[a-z]">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Email</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="email" placeholder="Digite su Email" class="form-control input-md" required minlength="5">

                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">  
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-success" style="font-weight: bold;">Registrar Cliente</button>
                    </div>
                </div>

            </fieldset>
        </form></center>

</body>
</html>
