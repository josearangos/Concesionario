<%-- 
    Document   : newSaleUserNotRegistre
    Created on : 17/09/2017, 10:38:31 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
            <link rel="stylesheet" type="text/css" href="css/newSaleUserNotRegistre.css">
            <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
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
                swal("ERROR: Ya existe el cliente, dirijase a las ventas con clientes ya registrados");
            </script>
        </c:if>
            
        <c:if test="${param.res==2}">
            <script>
                swal("ERROR: Ya existe un cliente con ese correo");
            </script>
        </c:if>

        <c:if test="${param.res==3}">
            <script>
                swal("ERROR: No existe el carro con la placa dada");
            </script>
        </c:if>
           
        <c:if test="${param.res==4}">
            <script>
                swal("Error: Vehiculo no valido, este ya se vendió");
            </script>
        </c:if>
            
        <c:if test="${param.res==5}">
            <script>
                swal("Se ha registrado la venta y el cliente correctamente");
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
    <center>
        <form action="../../saleServlet?action=newSaleUserNotRegistre" method="post" style="margin:2px;">
            <fieldset>
                <!-- Form Name -->
                <legend>Crear Venta</legend>
                <!-- ID del cliente-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="ide">ID</label>  
                    <div class="col-md-4">
                        <input id="ide" name="ide" type="text" placeholder="Digite ID" class="form-control input-md" required minlength="9" pattern="[A-Za-z0-9]+">
                    </div>
                </div>

                <!-- Nombre del cliente-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="name">Nombre</label>  
                    <div class="col-md-4">
                        <input id="name" name="name" type="text" placeholder="Digite Nombre" class="form-control input-md" minlength="1" required pattern="[A-Za-z0-9]+">
                    </div>
                </div>

                <!--Apellido del cliente-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="lastName">Apellido</label>  
                    <div class="col-md-4">
                        <input id="lastName" name="lastName" type="text" placeholder="Digite Apellido" class="form-control input-md" minlength="1" required pattern="[A-Za-z0-9]+">
                    </div>
                </div>

                <!--Email del cliente-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Email</label>  
                    <div class="col-md-4">
                        <input id="email" name="email" type="email" placeholder="Digite Email" class="form-control input-md" minlength="5" required pattern="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$">
                    </div>
                </div>
                <!--Matricula del carro comprado-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="plate">Matricula</label>  
                    <div class="col-md-4">
                        <input id="plate" name="plate" type="text" placeholder="Digite Matricula" class="form-control input-md" minlength="3" required pattern="[A-Za-z0-9]+">
                    </div>
                </div>

                <!--Botón del envio al servidor -->
                <div class="form-group">  
                    <div class="col-md-8">
                        <input  value="Registrar venta con Usuario no registrado"   type="submit"  name="action"  class="btn btn-success" style="font-weight: bold;">
                    </div>
                </div>

            </fieldset>
        </form>
    </center>

</body>
</html>