<%-- 
    Document   : newCar
    Created on : 17/09/2017, 09:39:39 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/newCar.css">
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    </head>
    <body>
        <c:if test = "${empty login}">
            <script>
                location.href="../login.jsp";
            </script>
        </c:if>
    <form action="../../accountServlet?action=logout" method="post"style="background: transparent; position: absolute; right: 0px;; z-index: 1">
        <input  value="Salir de sesión"   type="submit"  name="action"  class="btn btn-success" style="font-weight: bold; background: #FF6464;">
    </form>
    <div class="row" style="max-width: 100%">
            <div class="col-md-7" style="margin: 0 auto;">
                <div class="row">
                    <div class="col-md-2">
                        <form action="../../accountServlet?action=redirectMenu" method="post" style="background: transparent; margin-top: 10px; margin-left: 20%;">
                            <input  value="Menú"   type="submit"  name="action"  class="btn btn-success" style="font-weight: bold;">
                        </form>
                    </div>
                    <div class="col-md-8">
                        <center>
                            <legend class="animated wobble" style="margin-top: 5%; font-size: 45px; color: white;">
                                CriolloSolutions
                            </legend>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    <center><form action="../../carServlet?action=new" method="post">
            <fieldset>
                <!-- Form Name -->
                <legend>Crear Vehiculo</legend>
                <div>
                    <fieldset>
                        <!-- File Button --> 
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Foto</label>
                            <div class="col-md-4">
                                <input id="foto" name="foto" class="input-file" type="text" placeholder="Ingrese el link de la foto">
                            </div>
                        </div>
                    </fieldset>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Matricula</label>  
                    <div class="col-md-4">
                        <input name="matricula" type="text" placeholder="Digite Matricula" class="form-control input-md" minlength="3"  required pattern="[A-Za-z0-9]+">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Modelo</label>  
                    <div class="col-md-4">
                        <input name="modelo" type="text" placeholder="Digite Modelo" class="form-control input-md" minlength="3" required pattern="[A-Za-z0-9]+">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Marca</label>  
                    <div class="col-md-4">
                        <input name="marca" type="text" placeholder="Digite Marca" class="form-control input-md" minlength="3" required pattern="[A-Za-z0-9]+">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Precio</label>  
                    <div class="col-md-4">
                        <input name="precio" type="number" placeholder="Digite Precio" class="form-control input-md" required pattern="[0-9]">

                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">  
                    <div class="col-md-4">
                        <input value="Registrar Vehiculo" type="submit" name="action" class="btn btn-success" style="font-weight: bold;">
                    </div>
                </div>

            </fieldset>
        </form></center>

</body>
</html>


