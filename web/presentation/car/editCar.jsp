<%-- 
    Document   : editCar
    Created on : 17/09/2017, 09:44:36 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/editCar.css">
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    </head>
    <body>
        <c:if test = "${empty login}">
            <script>
                alert("Debe logearse para acceder a esta funcionalidad");
                location.href = "../login.jsp";
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
    <center><form style="margin: 0px;">


            <!-- Form Name -->
            <legend>Modificar Vehiculo</legend>


            <fieldset>

                <!-- File Button --> 
                <div class="form-group">
                    <center><div>
                            <img class="imgCargada" src="http://www.eltiempo.com/contenido/multimedia/fotos/curiosidades8/IMAGEN/IMAGEN-16752837-2.png">
                        </div></center>

                    <div>
                        <label class="col-md-4 control-label" for="filebutton">Foto</label>
                        <div class="col-md-4">
                            <input id="filebutton" name="filebutton" class="input-file" type="file">
                        </div>
                    </div>


                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Matricula</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="text" class="form-control input-md" disabled="true">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Modelo</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="text"  class="form-control input-md" disabled="true">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Marca</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="text"  class="form-control input-md" disabled="true">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Precio</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinput" type="number" placeholder="Digite Precio" class="form-control input-md" required>

                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">  
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-success" style="font-weight: bold;">Guardar Cambios</button>
                    </div>
                </div>

            </fieldset>
        </form></center>

</body>
</html>





