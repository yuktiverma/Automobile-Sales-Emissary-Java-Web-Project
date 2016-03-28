<%-- 
    Document   : InventorySoldFrame
    Created on : May 3, 2013, 11:13:51 PM
    Author     : ARPIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%

int c1=(Integer)request.getAttribute("c1");
int c2=(Integer)request.getAttribute("c2");
int c3=(Integer)request.getAttribute("c3");
int c4=(Integer)request.getAttribute("c4");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <iframe height="350px" width="648px" src="inventory report of stock overall.jsp?c1=<%=c1%>&c2=<%=c2%>&c3=<%=c3%>&c4=<%=c4%>"></iframe>
    </body>
</html>
