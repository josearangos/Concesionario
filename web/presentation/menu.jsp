<%-- 
    Document   : menu
    Created on : 17/09/2017, 09:00:22 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="menu.css">
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">  
    </head>
    <body>      
        <c:if test = "${empty login}">
            <script>
                alert("Debe logearse para acceder a esta funcionalidad");
                location.href="login.jsp";
            </script>
        </c:if>
        <form action="../accountServlet?action=logout" method="post"style="background: transparent; position: absolute; right: 0px; z-index: 1">
            <input  value="Salir de sesión"   type="submit"  name="action"  class="btn btn-success" style="font-weight: bold; background: #FF6464;">
        </form>
        <div class="container dad" style="width: 100%; padding: 0; position: relative">
            <h1 class="animated infinite bounce"><p class="signature ">Concesionario</p></h1>           
            <div class="row" style="float: right;">                
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="grow vertical-tab-1">          
                        <a href=".../clientServlet?action=List"><p class="rotate">Clientes</p></a>
                    </div>
                    <div class="grow vertical-tab-2">
                        <a href=".../saleServlet?action=listSale"><p class="rotate">Historial Ventas</p></a>
                    </div>
                    <div class="grow vertical-tab-3">
                        <a href=".../carServlet?action=listCars"><p class="rotate">Vehiculos</p></a>
                    </div>

                    <div class="grow vertical-tab-4">
                        <a href="sale/newSale.jsp"><p class="rotate">Generar Venta</p></a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>                           