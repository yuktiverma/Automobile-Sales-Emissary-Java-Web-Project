
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>



<%
String s =request.getParameter("sid");

  System.out.println("stid ============== "+s);
%>
<s:query dataSource="${ds}" sql="select * from city_name_master where State_Name='${param['sid']}'" var="rs"></s:query>
<select onchange="getArea();" id="area" name="selectct" class="combo">
    <option value="select">--Select--</option>
    <c:forEach items="${rs.rows}" var="data">
            <option value="${data.City_Name}">${data.City_Name}</option>
            </c:forEach>
    </select>