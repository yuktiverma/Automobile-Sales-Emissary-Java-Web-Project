<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from target_master where Target_Id=${param['Target_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Delete Target Details</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <div style="height: 350px; width: 648px;">
    <center>
        <form action="deleteTarget.do" method="post">

            
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="30">&nbsp;</td>
    <td colspan="3" valign="top" ><div align="center" class="style1">Delete Target Details</div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td width="150" valign="top">&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="150" valign="top">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center"class="whfont">Target_Id</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1" class="txtfld" readonly="" value="${param['Target_Id']}"/></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center"class="whfont">BaseModel_Id</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2" class="txtfld" readonly="" value="${data.BaseModel_Id}"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center"class="whfont">Model_Id</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t3" class="txtfld" readonly="" value="${data.Model_Id}"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center"class="whfont">No._of_product_to_sale</div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t4" class="txtfld" readonly="" value="${data.Number_Of_Product}" />
    </td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center"class="whfont">Month</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t5" id="addcal1" class="txtfld" readonly="" value="${data.Month_Id}"/></td>
 </tr>

 <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center"class="whfont">Year</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t6" id="addcal1" class="txtfld" readonly="" value="${data.Year}"/></td>
 </tr>

 <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center"class="whfont">Target_Desc</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><textarea name="t7">${data.Target_Desc}</textarea></td>
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
                                    <td valign="top"></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><div align="center"><input type="submit" value="Delete"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
                                    <td>&nbsp;</td>
                                </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
                    
        </form>
    </center></div>
</body>
</html>
</c:forEach>