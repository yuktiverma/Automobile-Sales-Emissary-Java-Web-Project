<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from designation_master where Desig_Id=${param['Desig_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Edit Designation Page</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <div style="width: 648px ; height:350px; background: white;">
    <center>
        <form name="edit_desig" action="editdesig.do">

            <table border="1"><tr><td>
<table width="540" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Update The Designation Details </div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td width="180" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="180" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center" class="whfont">Designation Id  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2"  class="txtfld" value="${param['Desig_Id']}" readonly/></td>
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
    <td valign="top" ><div align="center" class="whfont">Designation Name <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1"  class="txtfld" value="${data.Desig_Name}" /></td>
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
    <td valign="top"><div align="center" class="whfont"> Description </div></td>
    <td>&nbsp;</td>
    <td valign="top"><textarea name="ta1"> ${data.Desig_Desc} </textarea></td>
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
    <td valign="top"><div align="center" class="whfont">Access To Branches <span class="style2">*</span></div></td>
    <td>&nbsp;</td>
    <td valign="top"><select name="selectc1" class="combo">
            <option>--select--</option>
         <option value="1">Yes</option>
            <option value="0">No</option>
        </select> </td>
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
    <td valign="top"><div align="center" class="whfont">Access To Teams <span class="style2">*</span></div></td>
    <td>&nbsp;</td>
    <td valign="top"><select name="selectc2" class="combo">
            <option>--select--</option>
         <option value="1">Yes</option>
            <option value="0">No</option>
        </select> </td>

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
    <td>&nbsp;</td>
    <td valign="top"><div align="center"> <input type="reset" name="Submit" value="Reset" class="buttonSubmit" />
      <input type="submit" name="Submit2" value="Update"  onclick="fun(); return false" class="buttonSubmit" />
    </div></td>
    <td>&nbsp;</td>
  </tr>

</table>
                    </td></tr></table>
        </form>
    </center>
<script type="text/javascript" language="javascript">
              var o= new Validator("edit_desig");
                 o.addValidation("selectc1","req","Can't left blank Field");
                  o.addValidation("t1","req","Can't left blank Designation Name ");
                  o.addValidation("selectc2","req","Can't left Blank field");

  </script>


</div>
</body>
</html>
</c:forEach>