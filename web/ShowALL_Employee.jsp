<%-- 
    Document   : ShowALL_Employee
    Created on : Apr 20, 2013, 6:43:30 AM
    Author     : ARPIT
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Data</title>

    </head>
    <body>
  

        <center><div class="style1" style="width: 400px">Inserted Employees </div><br><br>

                <table width="648" bgcolor=white border=1 ><tr><td>
                            <center><table  ><tr><th width="90" class="table1">Employee_ID</th><th width="130" class="table1"> Employee Name</th><th width="80" class="table1"> Branch Id</th><th width="80" class="table1"> Designation ID </th><th width="80" class="table1">Status</th></tr>

        <core:forEach items="${requestScope['r'].rows}" var="data">
            <tr bgcolor='lightgray'><td  align="center" width="90" class="table1">${data.Emp_Id}</td><td  align="center" width="130" class="table1">${data.Emp_Fname} ${data.Emp_Lname}</td><td  align="center" width="80" class="table1">${data.Branch_Id}</td><td  align="center" width="80" class="table1">${data.Desig_Id}</td><td  align="center" width="80" class="table1">${data.Status_Id}</td><td width="100" class="table1"><a href='Show_EmpFull.do?Emp_Id=${data.Emp_Id}' class="table1"><b> Show Info</b> </a></td><td width="100" class="table1"><a href='Edit_Employee.do?Emp_Id=${data.Emp_Id}'><b> Edit</b> </a></td><td width="100" class="table1"><a href='Delete_Employee.do?Emp_Id=${data.Emp_Id}'><b>Delete</b> </a></td> </tr>
    </core:forEach>
                    </table>
                </center></td></tr></table>
            </center>
          
    </body>
</html>
