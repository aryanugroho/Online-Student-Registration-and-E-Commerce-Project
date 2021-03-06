<%-- 
    Document   : header
    Created on : Oct 15, 2014, 2:31:06 PM
    Author     : zeriet
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/style.css" rel="stylesheet" type="text/css" />

        <title>JSP Page</title>
    </head>
    <body>


        <div id="header">
            <img src="resources/banner2.png"  height="100" alt="logo" />
            <ul id="menu-bar">
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="viewCourses">Courses</a>

                </li>
                <li><a href="products">Products</a>

                </li>
                
                <li><a href="#">Contact Us</a></li>
                <li>  <sec:authorize access="isAnonymous()">
                        <a href="login.jsp"> Log in</a>    
                    </sec:authorize>  

                    <sec:authorize access="isAuthenticated()">
                        <a href="<c:url value="j_spring_security_logout" />" > Logout</a>
                    </sec:authorize></li>
                  <li> <div class="lighter">
                    <form action="searchProducts" method="post">
                        <span><input type="text" name="searchText" class="search square"><input type="submit" class="search square" value="Search"></span>
                    </form>
                </div>    </li>
                  <li><a href="aboutUs.jsp">About</a></li>

            </ul>

        </div>


    </body>
</html>
