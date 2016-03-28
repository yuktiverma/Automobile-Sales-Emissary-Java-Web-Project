<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
String user=(String) session.getAttribute("user");
String role=(String) session.getAttribute("role");

%>
<html>
    <head>
        <link rel="stylesheet" href="CSS/header_1.css"/>
        <link rel="stylesheet" href="CSS/stylesheet_1.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body  style="background-color: #ffffff;">
 <header id="mast"><h1 style="color:#FFAC1B;font-size:30px;">Automobile Sales Emissary</h1></header>
    <nav id="global">
    	<ul>
            <li><a class="selected" href="myhome.do">Home</a></li>
            <li><a class="selected" href="check.do">About</a></li>
            <li><a class="selected" href="services.do">Services</a></li>
            <li><a class="selected" href="contact.do">Contact</a></li>
            <li><a class="selected" href="Logout.jsp">Logout</a></li>
        </ul>
    </nav>
    <section id="intro">
        <header><b>Welcome,&nbsp; <%=user%></b></header>
        <div id="photo">
        	<div><img src= "logo/s20.jpg" alt="photo" width= "60px" height= "60px"></div>
        </div>
    </section>
    </body>
</html>