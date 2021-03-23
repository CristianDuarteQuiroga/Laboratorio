<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response
    Created on : 17/03/2021, 11:02:39 AM
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
       
        <jsp:useBean id="mybean" scope="session" class="co.edu.unipiloto.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <jsp:setProperty name="mybean" property="birth" />
       
        <h1>    
            <c:choose>
                <c:when test="${mybean.hour >= 0 && mybean.hour < 12}">
                    Buenos dias
                </c:when> 
               <c:when test="${mybean.hour >= 12 && mybean.hour < 18}">
                    Buenas tardes
                </c:when> 
                <c:otherwise>
                    Buenas noches
                </c:otherwise>
            </c:choose>

            <jsp:getProperty name="mybean" property="name" /> 
            Tu edad es <jsp:getProperty name="mybean" property="age" />
        </h1>
        
    </body>
</html>
