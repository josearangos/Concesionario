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

    </head>
    <body>

        <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
    <table class="table table-hover"  id="datos" >
        <thead>
        <tr style="background: #dadada; text-align: center; color: #666; font-weight: bolder; font-size: 15px;">
        <th style="text-align: center">ID</th>
        <th style="text-align: center">Nombre</th>
        <th style="text-align: center">Apellido</th>
        <th style="text-align: center">Email</th>
          </tr>
        

        

    </thead>
    <c:forEach var="a" items="${clients}"> 
        <tr>
            <td style="text-align: center"><p>${a.id}</p></td>
            <td style="text-align: center"><p>${a.name}</p></td>
            <td style="text-align: center"><p>${a.lastName}</p></td>
            <td style="text-align: center"><p>${a.email}</p></td> 
            <td style="text-align: center"><p>
            <a id="delete" onclick="return confirm('Esta seguro que desea eliminar el usuario')" href="../../clientServlet?action=delete&id=${a.id}">Eliminar</a>     
            <a id="edit" onclick="return confirm('Esta seguro que desea editar el usuario') " href="../../clientServlet?action=edit&id=${a.id}">Editar</a>
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