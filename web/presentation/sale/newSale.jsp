
<%-- 
    Document   : newSale
    Created on : 17/09/2017, 10:17:23 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/newSale.css">
	<link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <c:if test="${param.res==1}">
            <script>
                swal("No existe el cliente, favor registrarlo");
            </script>
        </c:if>
            
        <c:if test="${param.res==2}">
            <script>
                swal("No existe el vehiculo con esa placa");
            </script>
        </c:if>

        <c:if test="${param.res==3}">
            <script>
                swal("Se ha registrado la venta exitosamente");
            </script>
        </c:if>
        
	<center><legend class="animated wobble" style="margin-top: 5%; font-size: 45px; color: white;">CriolloSolutions</legend></center>
	<center>
            <!-- Form Name -->
            
            <!-- Text input-->
            <form class="animated bounceInDown bounceInLeft form1" action="../../saleServlet?action=new" method="post">
            <center><legend class="animated bounceInDown fadeInLeft">Crear Cliente</legend></center>
                <fieldset>
                <!--ID del cliente-->
                <div class="form-group">
                  <label class="col-md-4 control-label animated infinite bounce" for="ide">ID Cliente</label>  
                  <div class="col-md-4">
                    <input id="ide" name="ide" type="text" placeholder="Digite ID" class="form-control input-md" required minlength="9" pattern="[A-Za-z0-9]+">
                  </div>
                </div>
                <!--Matricula vehiculo-->
                <div class="form-group">
                  <label class="col-md-4 control-label animated infinite bounce" for="plate">Matricula</label>  
                  <div class="col-md-4">
                    <input id="plate" name="plate" type="text" placeholder="Digite Matricula" class="form-control input-md" minlength="3" required pattern="[A-Za-z0-9]+"> 
                  </div>
                </div>
                <!--Botón de envio al servidor-->
                <div class="form-group">  
                  <div class="col-md-4">
                    <input  value="Registrar Venta"   type="submit"  name="action"  class="btn btn-success" style="font-weight: bold;">
                  </div>
                </div>
                </fieldset>
            </form>
            <form class="animated bounceInDown bounceInRight  form2" action="../../saleServlet?action=redirectNewSaleUserNotRegistre" method="post">                          
                <!--Botón de envio al servidor-->
                <div class="form-group">  
                  <div class="col-md-4">                    
                    <input  value="Venta con Usuario no registrado"   type="submit"  name="action"  class="largo btn btn-success" style="font-weight: bold; margin-right: 10%">                  
                </div>
            </form>
            </center>
        
    </body>
</html>       