<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Area</title>
    </head>
    <body>
        <div style="width: 648px ; height:350px; background: white;">
             <center><div class="style1" style="width: 400px">Base Model Details</div><br><br>
                <table bgcolor=white border=1 width="600"><tr><td>
                            <center><table><tr><th class="table1">Area_ID</th>&nbsp;&nbsp;<th class="table1" width="130">Area_Name</th></tr>

        <core:forEach items="${requestScope['r'].rows}" var="data">
            <tr bgcolor='lightgray'><td class="whfont">${data.P_Area_Id}</td>&nbsp;&nbsp;<td class="whfont">${data.P_Area_Name}</td>&nbsp;&nbsp;<td width="80" ><a href='Show_Area.do?P_Area_Id=${data.P_Area_Id}'><b class="whfont">  Show </b></a></td><td class="whfont"><a href='Edit_Area.do?P_Area_Id=${data.P_Area_Id}'><b class="whfont">   Edit</b></a></td></tr>
    </core:forEach>
                    </table>
                </center></td></tr></table>
            </center>
        </div>
    </body>
</html>
