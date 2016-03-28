<%-- 
    Document   : InventorySoldFrame
    Created on : May 3, 2013, 11:13:51 PM
    Author     : ARPIT
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<%
 int b =(Integer)request.getAttribute("branchnum");
     int t =(Integer)request.getAttribute("total");
 int s =(Integer)request.getAttribute("sold");

%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <iframe height="350px" width="648px" src="Inventory Report For Sold Overall.jsp?b=<%=b%>&t=<%=t%>&s=<%=s%>"></iframe>
    </body>
</html>
