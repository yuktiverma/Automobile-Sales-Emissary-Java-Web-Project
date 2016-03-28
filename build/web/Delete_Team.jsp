<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%-- 
    Document   : Delete_TeamHm
    Created on : Apr 17, 2013, 4:25:44 PM
    Author     : ARPIT
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from team_trans_master where Team_Id=${param['Team_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
   <head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>delete team Page</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <div style="width:648px; height: 350px; background: white;">
    <center>
        <form name="addteamhm" action="deleteteam.do">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top" ><div align="center" class="style1"> Team Details  </div></td>
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
    <td valign="top"><div align="center" class="whfont">Team id  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1" class="txtfld"  value="${param['Team_Id']}" readonly /></td>
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
    <td valign="top" ><div align="center" class="whfont">Branch ID </div></td>
    <td>&nbsp;</td>
   <td valign="top"><input type="text" name="t2" class="txtfld" readonly value=${data.Branch_Id}  /></td>
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
    <td valign="top"><div align="center" class="whfont">Team Type & Model</div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from teamtype_master where Team_Type_Id =${data.Team_Type_Id}" var="rs1" ></s:query>
    <c:forEach items="${rs1.rows}" var="data1">
           <td valign="top"><input type="text" name="t3" class="txtfld" readonly value="${data1.Team_Type} ${data1.Team_TypeName}"  /></td>
    </c:forEach>
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
    <td valign="top"><div align="center" class="whfont">Team Manager Id   </div></td>
    <td>&nbsp;</td>
    <td valign="top">
          <input type="text" name="t6" class="txtfld" readonly value=${data.TeamManagerId}  /></td>

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
    <td valign="top"><div align="center" class="whfont">Team Leader Id  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t5" class="txtfld" readonly value=${data.TeamLeaderId} /></td>
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
    <td valign="top"><div align="center" class="whfont">Team Name </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t7" class="txtfld"  value=${data.Team_Name} /></td>
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
    <td valign="top"><div align="center" class="whfont">Status Id  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t8" class="txtfld" readonly   value=${data.Status_Id} /></td>

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
    <td ></td>
   
    <td valign="top"></td>
    <td valign="top"><input type="submit" value="Delete" class="buttonSubmit" /></td>
    <td>&nbsp;</td>
  </tr>
</table></td></tr></table>
        </form>
    </center>
    </div>
</body>
</html>
</c:forEach>