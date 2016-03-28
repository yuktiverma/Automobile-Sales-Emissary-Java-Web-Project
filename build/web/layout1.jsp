<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="stylesheet" href="CSS/header.css"/>
<link rel="stylesheet" href="CSS/stylesheet.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ASE</title>
    </head>
    <%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="t" %>
    <body style="background-color:#CCCCCC;">
        
    <div style="width: 850px;height: auto;margin: 0 auto; align:center;">
        <div>
            <t:insert attribute="head"></t:insert>
        </div>
        <div style="width:850px;height:380px;background-color:#ffffff;">
             <div style="height:50px;background-color:#ffffff;">
                  <div style="float: left;">
                      <t:insert attribute="menu"></t:insert>
                 </div>
                 <div style="float: right;background-color: #ffffff;border: 0px solid #ccc;">
                     <t:insert attribute="body"></t:insert>
                 </div>                 
             </div> 
         </div>
        <!--  body content must be end here -->
        <div>
          <!--footer part-->
          <t:insert attribute="foot"></t:insert>
        </div>
    </div>
    </body>
</html>