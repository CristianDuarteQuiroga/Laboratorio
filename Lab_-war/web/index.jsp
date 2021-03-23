<%-- 
    Document   : index
    Created on : 17/03/2021, 10:47:40 AM
    Author     : Cristian Duarte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hola!!
            Ingresa tus datos </h1>
        
         <form name="name input form" action="response.jsp">
            Nombre
            <input type="text" name="name" value="" />
            Fecha de nacimiento
            <input type="text" name="birth" value="" />
            <input type="submit" value="send" />
            
              
        </form>
    </body>
</html>
