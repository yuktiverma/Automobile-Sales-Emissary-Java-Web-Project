

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%
String s =request.getParameter("mid");

  System.out.println("mid ============== "+s);
%>
<s:query dataSource="${ds}" sql="select * from model_master where BaseModel_Id='${param['mid']}'" var="rs"></s:query>
<select name="selectttn" id="stt" class="combo">
    <option value="select">--Select--</option>
    <c:forEach items="${rs.rows}" var="data">
            <option value="${data.Model_Id}">${data.Model_Name}</option>
            </c:forEach>
    </select>


