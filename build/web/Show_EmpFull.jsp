<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from employee_master where Emp_Id=${param['Emp_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Show Employee Record Page</title>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <center>
        <form name="showemp" action="body.jsp">
       

                    <table width="648" cellpadding="0" cellspacing="0">

  <tr>
    <td width="40" height="60">&nbsp;</td>
    <td colspan="7" valign="top"> <p align="center" class="style1">Details Of Employee  </p></td>
    <td width="40">&nbsp;</td>
  </tr>

  <tr>
    <td height="15">&nbsp;</td>
    <td width="145">&nbsp;</td>
    <td width="30">&nbsp;</td>
    <td width="140">&nbsp;</td>
    <td width="30">&nbsp;</td>
    <td width="145" >&nbsp;</td>
    <td width="30">&nbsp;</td>
    <td width="140">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
     <td valign="top"><div align="center">Branch ID</div></td>
     <td >&nbsp;</td>
     <td valign="top" ><input type="text" name="t1" readonly class="txtfld" value=${data.Branch_Id}  /></td>
   <td >&nbsp;</td>
   <td valign="top"><div align="center">Employee ID</div></td>
     <td >&nbsp;</td>
     <td valign="top" ><input type="text" name="t27" readonly class="txtfld"  value="${param['Emp_Id']}"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Designation ID</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t2" class="txtfld" readonly value=${data.Desig_Id}  /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Employee Code</div></td>
    <td >&nbsp;</td>
    <td  valign="top" ><input type="text" name="t3" class="txtfld" readonly value=${data.Emp_Code}  /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">First Name  </div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t4" class="txtfld" readonly value=${data.Emp_Fname}  /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Last Name </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t5" class="txtfld" readonly value=${data.Emp_Lname}  /></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<form name="copy">
<tr>
  <td height="20">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor=lightgray> <div align="center">Current Address </div></td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top" bgcolor=lightgray><div align="center">Permanent Address</div>
        </td>
    <td>&nbsp;</td>
  </tr>
<tr>
  <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="350">&nbsp;</td>
    <td colspan="3" valign="top" >
		<table border="1"><tr><td>
                            <table width="100%" height="100%" border="0">
		<tr>
		 <td width="140" height="20" valign="top"><div align="center">Country </div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><input type="text" name="t6" readonly class="txtfld" value=${data.Current_Country}    />   </td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">State</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t7" readonly class="txtfld" value=${data.Current_State}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City </div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t8" readonly class="txtfld"  value=${data.Current_City}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">ZipCode</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t9" class="txtfld" readonly value=${data.Current_ZipCode}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Number </div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t10"class="txtfld"  readonly value=${data.Current_StreetAddress} /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 1</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t11"  class="txtfld" readonly value=${data.Current_Phone1} /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 2</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t12" class="txtfld" readonly  value=${data.Current_Phone2}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Mobile</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t13"  class="txtfld" readonly value=${data.Current_Mobile}  /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
				</table></td></tr></table>	</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top">
	<table border="1"><tr><td>
                    <table width="100%" height="100%" border="0">
		 <tr>
		 <td width="140" height="20" valign="top"><div align="center">Country </div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><input type="text" name="t14" readonly class="txtfld" value=${data.Perm_Country}   /></td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">State</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t15" readonly class="txtfld" value=${data.Perm_State}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t16" readonly class="txtfld" value=${data.Perm_City}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Zip Code</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t17" class="txtfld" readonly value=${data.Perm_ZipCode}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Number</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t18" class="txtfld" readonly  value=${data.Perm_StreetAddress}  /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 1 </div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t19" class="txtfld" readonly value=${data.Perm_Phone1}  /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 2</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t20" class="txtfld" readonly value=${data.Perm_Phone2}  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Mobile</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t21"  class="txtfld" readonly value=${data.Perm_Mobile}  /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
				</table>	</td></tr></table>	</td>
    <td>&nbsp;</td>
  </tr>
</form>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Email Id </div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t22"  class="txtfld" readonly value=${data.Email}  /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Status ID </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t28" class="txtfld"  readonly value=${data.Status_Id}  /></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
  <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Date Of joining</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t23" id="addcal1" class="Datefld" readonly value=${data.DateOf_Joining}  /></td>
    <td>&nbsp;</td>
    <td  valign="top"><div align="center">Date Of leaving </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t24" id="addcal2"  class="Datefld"  value=${data.DateOf_Leaving}  readonly/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="20">&nbsp;</td>
     <td valign="top"><div align="center">Access To All Branch</div></td>
     <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t25" class="txtfld"  readonly value=${data.AccessTo_All_Branches}  /></td>
   <td >&nbsp;</td><td valign="top"><div align="center">Access To All Teams</div></td>
     <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t26" class="txtfld"  readonly value=${data.AccessTo_All_Teams}  /></td>
    <td>&nbsp;</td>
  </tr>

  <tr>
  <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
  <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td ></td><td>&nbsp;</td>
    <td valign="top" ><div align="center"> <input type="submit" value="Back" class="buttonSubmit"/>
      
    </div></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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