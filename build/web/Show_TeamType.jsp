
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from teamtype_master where Team_Type_Id=${param['Team_Type_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
     <head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Show Team Type Page</title>

<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
     <div style="width: 648px ; height:350px; background: white;">
    <center>
        <form name="showteambm" action="AfterLogin.do" method="post">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top"><div align="center" class="style1">Team Type Details </div></td>
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
    <td valign="top"><div align="center" class="whfont">Team Type id </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2" class="txtfld" value="${param['Team_Type_Id']}" readonly>
    </td>
    <td>&nbsp;</td>
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
    <td valign="top"><div align="center" class="whfont">Team Type  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1" class="txtfld"  value="${data.Team_Type}"  readonly>
    </td>
    <td>&nbsp;</td>
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
    <td valign="top"><div align="center" class="whfont">Team Type name </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t3" class="txtfld" value="${data.Team_TypeName} " readonly />
    </td>
    <td>&nbsp;</td>
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
    <td>&nbsp;</td>
       <<td>&nbsp;</td>

       <td valign="top"><div align="center"><input type="submit" value="Back" class="buttonSubmit" /></div>

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
                    </td></tr></table>
        </form>
    </center>

</div>


</body>
</html>
</c:forEach>