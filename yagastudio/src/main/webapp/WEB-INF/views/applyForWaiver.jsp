<%-- 
    Document   : reasonWaiver
    Created on : Oct 15, 2014, 11:19:46 PM
    Author     : abel
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
        <fieldset>      
            <form action="addCustomer" method="post">
                <div>
                    <legend>Reason for Waiver Request</legend>           
                    <label>Reason:</label> <textarea rows="5" cols="50">
 
                    </textarea>       


            </form>
            <label><a href="index.jsp">Submit</a><label>
         <a href="<c:url value="j_spring_security_logout" />" > Logout</a>
                    </fieldset>    
                    </body>
                    </html>