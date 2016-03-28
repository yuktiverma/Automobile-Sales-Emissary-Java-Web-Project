
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%
String s =request.getParameter("bid");

  System.out.println("bid ============== "+s);
%>
<s:query dataSource="${ds}" sql="select * from branch_allocation_master where Branch_Id='${param['bid']}'" var="rs"></s:query>
<select name="selectinv" id="inv" onchange="getdetails();" class="combo">
    <option value="select">--Select--</option>
    <c:forEach items="${rs.rows}" var="data">
            <option value="${data.Inventory_Id}">${data.Inventory_Id}</option>
            </c:forEach>
    </select>

