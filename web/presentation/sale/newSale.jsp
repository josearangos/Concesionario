
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
        <c:if test = "${empty login}">
            <script>
                location.href="../login.jsp";
            </script>
        </c:if>
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
        
            <div class="boxForm">
                <center>
                    <form class="animated bounceInDown bounceInLeft form1" action="../../saleServlet?action=new" method="post" style="margin: 2px">
                        <legend class="animated bounceInDown fadeInLeft">Crear venta</legend>
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
                            <input  value="Registrar Venta"   type="submit"  name="action"  class="btn btn-success" style="font-weight: bold;margin-bottom:10px;">
                        </fieldset>
                    </form>
                    <form class="animated bounceInDown bounceInRight" action="../../saleServlet?action=redirectNewSaleUserNotRegistre" method="post">                          
                        <!--Botón de envio al servidor-->                   
                        <input  value="Venta con usuario no registrado"   type="submit"  name="action"  class="largo btn btn-success formButton" style="font-weight: bold; margin-bottom:10px;">                  
                    </form>
                    <form id="form2" action="../../saleServlet?action=listSale" method="post">
                        <input value="Ver ventas"   type="submit"  name="action"  class="btn btn-success animated  bounceInLeft formButton" style="font-weight: bold;margin-bottom:20px;">
                    </form>  
                </center>
            </div>

    </body>
</html>       