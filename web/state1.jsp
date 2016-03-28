<%-- 
    Document   : state1
    Created on : Apr 20, 2013, 3:53:25 AM
    Author     : ARPIT
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%
String s =request.getParameter("cid");

  System.out.println("cid ============== "+s);
%>
<s:query dataSource="${ds}" sql="select * from state_name_master where Country_Name='${param['cid']}'" var="rs"></s:query>
<select name="selects1" id="stt1" onchange="getCity1();" class="combo">
    <option value="select">--Select--</option>
    <c:forEach items="${rs.rows}" var="data">
            <option value="${data.State_Name}">${data.State_Name}</option>
            </c:forEach>
    </select>


