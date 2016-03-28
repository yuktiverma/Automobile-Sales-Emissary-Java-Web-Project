<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%
String s =request.getParameter("invid");
String s1=request.getParameter("mid");
  System.out.println("inv id ============== "+s+"model id................."+s1);
%>
<s:query dataSource="${ds}" sql="select * from branch_allocation_master where Inventory_Id=${param['invid']} && Branch_Id=${param['bid']} && Model_Id=${param['mid']}" var="rs"></s:query>


  <select name="selectinv" id="color1" onchange="getdet();" class="combo">
    <option value="select">--Select--</option>
    <c:forEach items="${rs.rows}" var="data">
            <option value="${data.Color_Id}">${data.Color_Id}</option>
            </c:forEach>
    </select>

    