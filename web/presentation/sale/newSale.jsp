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
</head>
<body>
	<center><legend style="margin-top: 5%; font-size: 45px; color: white;">CriolloSolutions</legend></center>
	<center><form>
<fieldset>

<!-- Form Name -->
<legend>Crear Venta</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">ID Cliente</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="text" placeholder="Digite ID" class="form-control input-md" required minlength="9" pattern="[A-Za-z0-9]+">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Matricula</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="text" placeholder="Digite Matricula" class="form-control input-md" minlength="3" required pattern="[A-Za-z0-9]+"> 
    
  </div>
</div>

<!-- Button -->
<div class="form-group">  
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-warning" style="font-weight: bold;">Registra Venta</button>
  </div>
</div>

</fieldset>
</form></center>

</body>
</html>       
        