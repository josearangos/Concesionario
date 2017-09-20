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
        <link rel="stylesheet" type="text/css" href="css/listClient2.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

    </head>
    <body>

        <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
    <table class="table table-hover"  id="datos" >
        <thead>
        <tr style="background: #dadada; text-align: center; color: #666; font-weight: bolder; font-size: 15px;">
        <th class="animated bounceInLeft " style="text-align: center">ID</th>
        <th class="animated bounceInRight " style="text-align: center">Nombre</th>
        <th class="animated bounceInLeft "style="text-align: center">Apellido</th>
        <th class="animated bounceInRight " style="text-align: center">Email</th>
        </tr>         

    </thead>
    <c:forEach var="a" items="${clients}"> 
        <tr>
            <td class="animated bounceInLeft " style="text-align: center"><p>${a.id}</p></td>
            <td class="animated  bounceInRight" style="text-align: center"><p>${a.name}</p></td>
            <td class="animated  bounceInRight" style="text-align: center"><p>${a.lastName}</p></td>
            <td class="animated  bounceInLeft" style="text-align: center"><p>${a.email}</p></td> 
            <td style="text-align: center"><p>
            <td class="animated  bounceInLeft" style="text-align: center"><a  id="delete" onclick="return confirm('Esta seguro que desea eliminar el usuario')" href="../../clientServlet?action=delete&id=${a.id}">Eliminar</a></td>    
            <td class="animated  bounceInRight"><a id="edit" onclick="return confirm('Esta seguro que desea editar el usuario') " href="../../clientServlet?action=edit&id=${a.id}">Editar</a></td>
            </p></td> 
        </tr>          
    </c:forEach>
</table>
</fieldset>
</form>
</div>
</div>


</body>
</html>