<%-- 
    Document   : area
    Created on : Apr 27, 2013, 1:51:38 AM
    Author     : Yukti
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%
String s =request.getParameter("City_Id");

  System.out.println("cid ============== "+s);
%>
<s:query dataSource="${ds}" sql="select City_Id from city_name_master where City_Name='${param['aid']}'" var="rs"></s:query>
<select name="selectar"  class="combo">
    <option value="select"></option>
    <c:forEach items="${rs.rows}" var="data">
        <s:query dataSource="${ds}" sql="select * from area_master where City_Id='${data.City_Id}'" var="rs1"></s:query>
        <c:forEach items="${rs1.rows}" var="data1">
            <option value="${data1.P_Area_Id}">${data1.P_Area_Name}</option>
        </c:forEach>
            </c:forEach>
    </select>





