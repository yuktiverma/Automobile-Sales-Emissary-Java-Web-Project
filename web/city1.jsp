<%-- 
    Document   : city1
    Created on : Apr 20, 2013, 3:59:23 AM
    Author     : Yukti
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>



<%
String s1 =request.getParameter("sid1");

  System.out.println("stid 1============== "+s1);
%>
<s:query dataSource="${ds}" sql="select * from city_name_master where State_Name='${param['sid1']}'" var="rs"></s:query>
<select name="selectct1" class="combo">
    <option value="select">--Select--</option>
    <c:forEach items="${rs.rows}" var="data">
            <option value="${data.City_Name}">${data.City_Name}</option>
            </c:forEach>
    </select>