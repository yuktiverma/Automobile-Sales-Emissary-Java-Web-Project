<%-- 
    Document   : Logout
    Created on : Apr 24, 2013, 2:20:23 PM
    Author     : ARPIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script type="text/javascript">
	window.history.forward(window.history.length);
        //or try
        //window.history.forward(1);

	function noBack()
  {
  window.history.forward(window.history.length);
  }
</script>

    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        
        <%
        session.invalidate();
        response.sendRedirect("index.jsp");
        %>
       
    </body>
</html>
