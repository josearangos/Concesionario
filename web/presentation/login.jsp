<%-- 
    Document   : login
    Created on : 17/09/2017, 09:00:39 PM
    Author     : josearangos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    </head>
    <body>

        <video id="video-background" width="560" height="315" autoplay preload muted loop>
            <source src="voiture.mp4" type='video/mp4; codecs="avc1,mp4a"' />
            <source src="voiture.ogv" type='video/ogg; codecs="theora,vorbis"' />
            <source src="voiture.webm" type='video/webm; codecs="vp8,vorbis"' />
        </video>  

        <div class="container">
            <div class="row vertical-offset-100">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default"><center>
                            <div class="panel-heading" style="background-color: #607d8b; float:left; width: 100%;">
                                <form action="../accountServlet?action=redirectListCar" method="post">
                                    <input value="Volver"   type="submit"  name="action"  class="largo btn btn-success" style="font-weight: bold; float: left; background: #FEC957; color: black">
                                </form>
                                <h3 class="panel-title" style="color: orange; font-weight: bold; float:left; margin-left: 10%;margin-top: 2vh;">CriolloSolutions</h3>
                            </div>
                            <div class="panel-body" style="float:left; width: 100%;">
                                <form accept-charset="UTF-8" role="form"  action="../accountServlet?action=login" method="post">
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control " style="color: orange;" placeholder="E-mail" name="username" type="text" pattern="[A-Za-z0-9]+" required>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" style="color: orange;" placeholder="Password" name="password" type="password" value="" required>
                                        </div>
                                        <c:if test="${param.error==1}">
                                            <font color="yellow">Usuario Invalido. Intentelo de nuevo</font>
                                        </c:if>  
                                        <div class="checkbox">			    	    	
                                        </div>
                                        <input class="btn btn-lg btn-warning btn-block" type="submit" name="action"  value="Iniciar" style="font-weight: bold; color: black;">
                                    </fieldset>
                                </form>
                            </div>
                        </center></div>
                </div>
            </div>
        </div>
    </body>
</html>






