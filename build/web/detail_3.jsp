<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%
String s =request.getParameter("invid");
String s1=request.getParameter("bid");
String s2=request.getParameter("mid");
String s3=request.getParameter("cid");
  System.out.println("inv id ============== "+s+" branch id................."+s1);
%>
<s:query dataSource="${ds}" sql="select sum(Total_Quantity_Allocated) as a from branch_allocation_master where Model_Id=${param['mid']} && Color_Id=${param['cid']} group by Color_Id" var="rs1"></s:query>
<s:query dataSource="${ds}" sql="select sum(Model_Sold) as b from branch_allocation_master where Model_Id=${param['mid']} && Color_Id=${param['cid']} group by Color_Id" var="rs2"></s:query>
<s:query dataSource="${ds}" sql="select Price from price_master where Model_Id=${param['mid']} " var="rs3"></s:query>

<table >
    <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

 <tr>

    <td height="20" width="150" valign="top"><div align="center">Total Number Of Model Allocated  </div></td>
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

     <td height="20" width="150" valign="top"><div align="center">Total Number Of Model Sold  </div></td>
    <td width="30"></td>
    <td valign="top"width="150" >
        <c:forEach items="${rs2.rows}" var="data2">
            <input type="text" name="t2"  class="txtfld" value="${data2.b}" readonly/></td>
         <c:set var="t2" value="${data2.b}"></c:set>
        </c:forEach>

  </tr>

   <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 <tr>

     <td height="20" width="150" valign="top"><div align="center">Total Number Of Model In Hand  </div></td>
    <td width="30"></td>
    <td valign="top"width="150" >
            <input type="text" name="t2"  class="txtfld" value="${t-t2}" readonly/></td>
         

  </tr>


   <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
       <td height="20" valign="top"><div align="center">Cost  of Sold   </div></td>
    <td>&nbsp;</td>

    <td valign="top">
        <c:forEach items="${rs3.rows}" var="data3">
        <input type="text" name="t5"  class="txtfld" value="${t2 * data3.Price}" readonly/></td>
    </c:forEach>

     </tr>


</table>


