
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from team_trans_master where Team_Id=${param['Team_Id']} " var="rs1"></s:query>
<c:forEach items="${rs1.rows}" var="data1">


<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>update team Page</title>
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
        <form name="editteam" action="editteam.do">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Update Team Details </div></td>
    <td width="70">&nbsp;</td>
  </tr>
 
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center" class="whfont">Team Id </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2" class="txtfld" value="${param['Team_Id']}" readonly /></td>
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
    <td valign="top" ><div align="center" class="whfont">Branch Name </div></td>
    <td>&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from branch_master" var="rs"></s:query>

    <td valign="top"> <select name="selectb"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Branch_Id}" >${data.Branch_Name}</option>
            </c:forEach>
    </select></td>
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
    <td valign="top"><div align="center" class="whfont">Team Type& Model <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from teamtype_master" var="rs"></s:query>
    <td valign="top"> <select name="selecttt"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Team_Type_Id}" >${data.Team_Type} ${data.Team_TypeName} </option>
            </c:forEach>
    </select>
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
    <td valign="top"><div align="center" class="whfont">Team Manager Id <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from employee_master" var="rs"></s:query>
    <td valign="top"> <select name="selectmid"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Emp_Id}" >${data.Emp_Id}: ,${data.Emp_Fname} ${data.Emp_Lname}</option>
            </c:forEach>
    </select></td>
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
    <td valign="top"><div align="center" class="whfont">Team Leader Id <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from employee_master" var="rs"></s:query>
    <td valign="top"> <select name="selectlid"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Emp_Id}">${data.Emp_Id}: ,${data.Emp_Fname} ${data.Emp_Lname}</option>
            </c:forEach>
    </select></td>
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
    <td valign="top"><div align="center" class="whfont">Team Name <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t3" class="txtfld" value="${data1.Team_Name}" /></td>
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
     <s:query dataSource="${ds}" sql="select * from status_master" var="rs"></s:query>
    <td valign="top"> <select name="selectst"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Status_Id}" >${data.Status_Desc} </option>
            </c:forEach>
    </select>
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
    <td ></td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" />
      <input type="submit" name="Submit2" value="update"  onclick="fun(); return false" class="buttonSubmit" />
    </div></td>
    <td>&nbsp;</td>
  </tr>


 
</table>
                    </td></tr></table>
        </form>
    </center>
<script type="text/javascript" language="javascript">
              var o= new Validator("editteam");

                  o.addValidation("t3","req","Can't left blank  Team Name");
                  o.addValidation("selectlid","req","Can't left Blank Leader Id");

  </script>

</div>

</body>
</html>
</c:forEach>
