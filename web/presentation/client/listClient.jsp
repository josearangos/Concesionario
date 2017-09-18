<%-- 
    Document   : listClient
    Created on : 17/09/2017, 10:36:19 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/listClient.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">



<nav  class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="container1 container-fluid"> 
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
<span class="sr-only">Toggle navigation</span>
<i class="icon-menu"></i> Menu
</button>
<a class="navbar-brand" href="#"><span style="font-weight: bold;">CriolloSolutions</span></a>
</div>


 <div class="col-md-8">
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


<div class="col-md-12">
<form class="form-horizontal form-horizontal_x">
<div class="col-md-12">
    <div class="form-group">
     
      <div class="col-sm-2">
	     <input type="text" class="form-control" id="pwd" placeholder="ID" minlength="9" required pattern="[A-Za-z0-9]+">
      </div>
	  
	  <div class="col-sm-2">          
        <input type="text" class="form-control" id="pwd" placeholder="Nombre" minlength="1" pattern="[A-Za-z0-9]+">
      </div>
	  
	  <div class="col-sm-2">          
        <input type="text" class="form-control" id="pwd" placeholder="Apellido" minlength="1" pattern="[A-Za-z0-9]+">
      </div>
      <div class="col-sm-2">          
        <input type="text" class="form-control" id="pwd" placeholder="Email" minlength="5" >
      </div>
	  
	  <div class="col-sm-2" style="width: 3%; margin-right: 5%;">
        <button type="submit"  class="btn btn-danger">Borrar</button>
      </div>
      <div class="col-sm-2">
        <button type="submit" style="margin-right: 3%;" class="btn btn-warning">Editar</button>
      </div>
    </div>
	</div>
	
  </form>
  </div>
  
</div>
</div>

 
</div>
 
</nav>

<div class="container" style="margin-top: 5%;">
    <div class="row">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<center><legend>Clientes</legend></center>
<table class="table table-hover">
                <thead>
                <tr style="background: #dadada; text-align: center; color: #666; font-weight: bolder; font-size: 15px;">
                                <td colspan="6">Listado De Registros</td></tr>
                    <th></th>
                
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                </thead>
                
                        <tr>
                            <td style="text-align: center"><p></p></td>
                            <td style="text-align: center"><p></p></td>
                            <td style="text-align: center"><p></p></td>
                            <td style="text-align: center"><p></p></td>                           
                        </tr>               
            </table>
</fieldset>
</form>

        
        
    </div>
</div>


</body>
</html>