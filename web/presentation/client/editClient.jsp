<%-- 
    Document   : editClient
    Created on : 17/09/2017, 10:30:00 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/editClient2.css">
	<link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">


</head>
<body>
    
    
<center><legend class="animated  rubberBand" style="margin-top: 5%; font-size: 45px; color: white;">Concensionario</legend></center><center>
             
    
    
<form class="form1 animated zoomInDown" action="../../clientServlet?action=editClient" method="post" >
    <fieldset>
        
        
         <c:if test="${param.res==1}">
            <script>
                swal("Usuario modificado con exito !", "Presiona OK", "success");
            </script>
        </c:if>
        
        <!-- Form Name -->
        <legend class="animated  bounceInRight">Modificar Cliente</legend>
      
        <c:forEach var="a" items="${cliente}">            
        
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label animated  bounceInRight" for="textinput">ID</label>  
          <div class="col-md-4">
              <input name="ide"  value="${a.id}" type="text"  class="form-control input-md animated  bounceInRight" minlength="6" maxlength="10" required pattern="[0-9]+">

          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label animated  bounceInLeft"  for="textinput">Nombre</label>  
          <div class="col-md-4">
          <input  name="nombre" type="text" value="${a.name}"  class="form-control input-md animated  bounceInLeft" minlength="1" pattern="[ A-Za-zäÄëËïÏöÖüÜáéíóúáéíóúÁÉÍÓÚÂÊÎÔÛâêîôûàèìòùÀÈÌÒÙ.-]+">

          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label  animated  bounceInRight"  for="textinput" >Apellido</label>  
          <div class="col-md-4">
          <input  name="apellido" value="${a.lastName}"  type="text" class="form-control input-md animated  bounceInRight" minlength="1" pattern="[ A-Za-zäÄëËïÏöÖüÜáéíóúáéíóúÁÉÍÓÚÂÊÎÔÛâêîôûàèìòùÀÈÌÒÙ.-]+">

          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label animated  bounceInLeft" for="textinput" >Email</label>  
          <div class="col-md-4">
          <input id="textinput" name="correo" type="email" value="${a.email}"   class="form-control input-md animated  bounceInLeft" required pattern="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$">

          </div>
        </div>

        <!-- Button -->
        <div class="form-group">  
          <div class="col-md-4">
              <input value="Guardar Cambios" type="submit" name="action"  class="btn btn-warning animated  bounceInRight" style="font-weight: bold;" >
          </div>
       
        </c:forEach>
     </fieldset>
</form>
            
   <form id="form" action="../../clientServlet?action=List" method="post">
            <center><input style="margin-right: 10%" value="Ver clientes"   type="submit"  name="action"  class="btn btn-success animated  bounceInLeft" style="font-weight: bold;"></center>
   </form>
        </center>
     
</body>
</html>