<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from branch_master where Branch_Id=${param['Branch_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Show Branch</title>


<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body><center>

        <form name="showbranch" action="body.jsp" method="post">
      
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top" ><div align="center" class="style1"> Branch Details</div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Branch Id </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t11"  class="txtfld"  value="${param['Branch_Id']} " readonly  /></td>
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
    <td valign="top"><div align="center">Branch Name </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1" readonly class="txtfld" value="${data.Branch_Name}"/> </td>
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
    <td valign="top"><div align="center">Country </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2" readonly class="txtfld" value="${data.Branch_Country}" /></td>
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
    <td valign="top"><div align="center">State </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t3"readonly class="txtfld" value="${data.Branch_State}"  /></td>
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
    <td valign="top"><div align="center">City </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t4" readonly class="txtfld" value="${data.Branch_City}" /></td>
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
    <td valign="top"><div align="center">Street Number </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t5" readonly class="txtfld" value="${data.Branch_StreetAddress}"  /></td>
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
    <td valign="top"><div align="center">Phone 1 </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t6" readonly  class="txtfld" value=${data.Branch_Phone1} /></td>
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
    <td valign="top"><div align="center">Phone 2 </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t7" readonly class="txtfld"  value=${data.Branch_Phone2} /></td>
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
    <td valign="top"><div align="center">Zip Code</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t8" readonly  class="txtfld"value=${data.Branch_ZipCode} /></td>
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
    <td valign="top"><div align="center">Status ID </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t9" readonly class="txtfld" value="${data.Status_Id}" /></td>
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
    <td valign="top"><div align="center">Fax</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t10" readonly class="txtfld" value="${data.Branch_Fax}" /></td>
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
    <td>&nbsp;</td>
    <td valign="top"><div align="center">
      <input type="submit" name="Submit" value="Back"  class="buttonSubmit" />
    </div></td>
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
        </center>
</body>
</html>
</c:forEach>