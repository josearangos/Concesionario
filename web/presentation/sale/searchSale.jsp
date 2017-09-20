<%-- 
    Document   : searchSale
    Created on : 17/09/2017, 10:23:35 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="searchSale.css">
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

    </head>
    <body>  

          <div id="flipkart-navbar">
            <div class="container ">
                <div class="row row1">

                </div>
                <div class="row row2">
                    <div class="col-sm-2">

            <div class="grow">
            <h1><span style="font-size: 20px; font-weight: bold; margin-right: 10%; margin-top: 7%;" class="largenav">Concesionario</span></h1></div>
                    </div>
                    <div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11">
                        <div class="row animated bounceInDown">
                            <input  class="flipkart-navbar-input col-xs-11 " style="float: left; color: black; font-weight: bold;" id="searchTerm" type="text" onkeyup="doSearch()" placeholder="Buscar ventaa" required pattern="[a-z]+">
                            <button class="flipkart-navbar-button col-xs-1 shrink" style="width: 50px; float: left;">
                           
                                <svg width="15px" height="15px">
                                <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
                                </svg>
                            </button>
                            <!--<div >
                                 <button style="float: left;" class="btn btn-success btn-md"  onClick="location.href='../../presentation/client/newClient.jsp'">Crear Cliente</button>
                            </div>-->
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
      
        <div class="container">
            <div class="row">
                <fieldset>
                    <!-- Form Name -->

                    <center><legend>Ventas</legend></center>
         <table class="table table-hover" id="datos">

                    <thead>
                        <tr style="background: #dadada; text-align: center; color: #666; font-weight: bolder; font-size: 15px;">
                            <td colspan="3">Listado De Registros</td></tr>
                    <th></th>
                    <th class="animated bounceInLeft " style="text-align: center">Cliente</th>
                    <th class="animated bounceInRight " style="text-align: center">Matricula</th>
                    <th class="animated bounceInLeft " style="text-align: center">Fecha</th>

                    </thead>
                        <thead>
                            <c:forEach var="a" items="${sales}"> 
                                <tr>
                                    <td class="animated bounceInRight " style="text-align: center"><p>${a.client1.getId()}</p></td>
                                    <td class="animated bounceInLeft " style="text-align: center"><p>${a.car1.getPlate()}</p></td>
                                    <td class="animated bounceInRight " style="text-align: center"><p>${a.saleDate.getDay()}/${a.saleDate.getMonth()}/${a.saleDate.getYear()}</p></td>
                                </tr>  
                            </c:forEach>
                        </thead>
                    </table>
                </fieldset>

            </div>
        </div>

        <script type="text/javascript" src="searchSale.js"></script>
    </body>
</html>