<%-- 
    Document   : addSuccess
    Created on : Oct 14, 2014, 4:03:57 PM
    Author     : b
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>mr. ${currentAdmin.lastName} You have successfully added ${added}</h1>
        <a href="<c:url value="j_spring_security_logout" />" > Logout</a>
        <a href="index.jsp">Cancel</a>
    </body>
</html>
