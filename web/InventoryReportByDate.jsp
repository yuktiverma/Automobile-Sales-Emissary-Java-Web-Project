
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Inventory Report Of Stock In Branch</title>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>

<script src="gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="stylesheet.css"/>

</head>

<body>
   
    <center>
        <form name="invent" action="InventoryByYear.do">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Inventory Report By Date  </div></td>
    <td width="70">&nbsp;</td>
  </tr>

   <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center">Year <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select year(Inv_Allocation_Date) as a from branch_allocation_master" var="rs"></s:query>

         <td valign="top"><select id="branch" name="selectyear" class="combo">
            <option value="select">select</option>
             <c:forEach items="${rs.rows}" var="data">
                <option value="${data.a}" >${data.a}</option>
            </c:forEach>
            </select></td>
</tr>
   <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
  <td>&nbsp;</td>
    <td>&nbsp;</td>
    

       <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">
            <input type="submit"  value="Submit" class="buttonSubmit" />
    </div></td>
   <td>&nbsp;</td>
    
   </tr>

   </table>
                    </td></tr></table>
        </form>
    </center>
</body>
</html>


