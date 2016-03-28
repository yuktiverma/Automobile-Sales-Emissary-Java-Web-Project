<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

    </head>
    <body>
        <div style="width: 648px ; height:350px; background: white;">

            <center><div class="style1" style="width: 400px">Target Details</div><br><br>
                <table bgcolor=white border=1 width="600"><tr><td>
                <center><table><tr><th class="table1">Target_ID</th><th></th></tr>
        <core:forEach items="${requestScope['r'].rows}" var="data">
            <tr bgcolor='lightgray'><td class="table1">${data.Target_Id}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="table1"><a href='Show_Target.do?Target_Id=${data.Target_Id}'><b>Show</b></a></td><td>&nbsp;&nbsp;&nbsp;</td><td class="table1"><a href='Edit_Target.do?Target_Id=${data.Target_Id}'><b>Edit</b> </a></td><td>&nbsp;&nbsp;&nbsp;</td><td class="table1"><a href='Delete_Target.do?Target_Id=${data.Target_Id}'><b>Delete</b></a></td></tr>
        </core:forEach>
                    </table>
                </center></td></tr></table>
            </center>
            </div>
    </body>
</html>