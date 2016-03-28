
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%
String s =request.getParameter("invid");
String s1=request.getParameter("bid");
  System.out.println("inv id ============== "+s+" branch id................."+s1);
%>
<s:query dataSource="${ds}" sql="select * from branch_allocation_master where Inventory_Id=${param['invid']} && Branch_Id=${param['bid']}" var="rs"></s:query>
<s:query dataSource="${ds}" sql="select sum(Total_Quantity_Allocated) as a from branch_allocation_master where Inventory_Id=${param['invid']} && Branch_Id=${param['bid']} group by Inventory_Id" var="rs1"></s:query>
<s:query dataSource="${ds}" sql="select sum(Model_Sold) as b from branch_allocation_master where Inventory_Id=${param['invid']} && Branch_Id=${param['bid']} group by Inventory_Id" var="rs2"></s:query>
<table >
    <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
 <tr>
    
    <td height="20" width="150" valign="top"><div align="center">Total Number Of Quantities Allocated  </div></td>
    <td width="30"></td>
    <td valign="top"width="150" >
        <c:forEach items="${rs1.rows}" var="data1">
            <input type="text" name="t1"  class="txtfld"  value="${data1.a}" readonly/></td>
        <c:set var="t" value="${data1.a}"></c:set>
 </c:forEach>

    
  </tr>
   <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 <tr>
    
     <td height="20" width="150" valign="top"><div align="center">Total Number Of Quantities Sold  </div></td>
    <td width="30"></td>
    <td valign="top"width="150" >
        <c:forEach items="${rs2.rows}" var="data2">
            <input type="text" name="t2"  class="txtfld" value="${data2.b}" readonly/></td>
           <c:set var="t1" value="${data2.b}"></c:set>
    </c:forEach>
    
  </tr>

   <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<tr>

     <td height="20" width="150" valign="top"><div align="center">Total Number Of Quantities In Hand  </div></td>
    <td width="30"></td>
    <td valign="top"width="150" >
        <c:forEach items="${rs2.rows}" var="data2">
            <input type="text" name="t2"  class="txtfld" value="${t-t1}" readonly/></td>
        </c:forEach>

  </tr>

   <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>


  <tr>
    
    <td height="20" valign="top" ><div align="center">Model Id <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top">
       <select name="selectinv" id="model1" onchange="getcolor();" class="combo">
    <option value="select">--Select--</option>
    <c:forEach items="${rs.rows}" var="data">
            <option value="${data.Model_Id}">${data.Model_Id}</option>
            </c:forEach>
    </select>
</td>
     </tr>
</table>


