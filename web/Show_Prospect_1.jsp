<%-- 
    Document   : Show_Prospect
    Created on : Apr 19, 2013, 4:09:22 PM
    Author     : vidhya
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<s:query dataSource="${ds}" sql="select * from prospect_master where Prospect_Id='${param['pid']}'" var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Prospect</title>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>

          <script type="text/javascript" src="JS/cal2.js"></script>
          <script type="text/javascript" src="JS/cal_conf2.js"></script>
          <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
          <link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <center>
    <form name="showpros" id="showprosform">
        

        <table width="730" cellpadding="0" cellspacing="0"  border="0">

  <tr>
    <td width="20" height="40">&nbsp;</td>
    <td colspan="7" valign="top">    <p align="center" class="style1">Prospect Detail</p></td>
    <td width="20">&nbsp;</td>
  </tr>
  <tr>
    <td height="15">&nbsp;</td>
    <td width="150">&nbsp;</td>
    <td width="30">&nbsp;</td>
    <td width="150">&nbsp;</td>
    <td width="30">&nbsp;</td>
    <td width="150" >&nbsp;</td>
    <td width="30">&nbsp;</td>
    <td width="150">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<tr>
    <td height="20">&nbsp;</td>
    <td >&nbsp; </td>
     <td >&nbsp;</td>
     <td valign="top"><div align="center">Prospect Id<span class="style2">*</span></div></td>
   <td >&nbsp;</td>
    <td valign="top" ><select name="select" class="combo">
      <option value="${data.Prospect_Id}" >${data.Prospect_Id}</option>
    </select></td>
     <td >&nbsp;</td>
     <td >&nbsp;</td>
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
     <td valign="top"><div align="center">Branch Id</div></td>
     <td >&nbsp;</td>
     <td valign="top" ><input type="text" name="t1" class="txtfld" value="${data.Branch_Id}" readonly />    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Status_Id</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t2" class="txtfld" value="${data.Status_Id}" readonly />    </td>
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
     <td valign="top"><div align="center">Prospect Type Id</div></td>
     <td >&nbsp;</td>
     <td valign="top" ><input type="text" name="t3" class="txtfld" value="${data.Prospect_Type_Id}" readonly />    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Industry Id</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t4" class="txtfld" value="${data.Industry_Id}" readonly />    </td>
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
    <td valign="top"><div align="center">First Name</div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t5" class="txtfld" value="${data.Prospect_Fname}" readonly /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Last Name </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t6" class="txtfld" value="${data.Prospect_Lname}" readonly /></td>
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
<form name="custdet">
<tr>
  <td height="20">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor=lightgray> <div align="center">Prospect Address</div></td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top" bgcolor=lightgray><div align="center">Product Detail</div></td>
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
    <td height="200">&nbsp;</td>
    <td colspan="3" valign="top" >
		<table border="1"><tr><td>
                            <table width="100%" height="80%" border="0">
		<tr>
		 <td height="5" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
        <tr>
		 <td width="140" height="20" valign="top"><div align="center">Country</div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><input type="text" name="t7" class="txtfld" value="${data.P_Country}" readonly />   </td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">State</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t8" class="txtfld" value="${data.P_State}" readonly /> </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t9" class="txtfld" value="${data.P_State}" readonly /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
<tr>
		 <td width="140" height="20" valign="top"><div align="center">Area Id</div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><input type="text" name="t10" class="txtfld" value="${data.P_Area_Id}" readonly /></td>
    	</tr>    <td >&nbsp;</td>
		<tr>
		 <td   height="20"valign="top"><div align="center">ZipCode</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t11" class="txtfld" value="${data.P_Zipcode}" readonly /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Address</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><textarea name="textarea" name="ta1" readonly>${data.P_StreetAddress}</textarea></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
      </table>
         </td></tr>
                </table></td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top">
	<table border="1"><tr><td>
                    <table width="100%" height="100%" border="0">

                        <tr>
		 <td height="5" >&nbsp;<td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr><tr>
		 <td width="140" height="20" valign="top"><div align="center">Model_To_Buy</div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><input type="text" name="t12" class="txtfld" value="${data.Model_To_Buy}" readonly /></td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">Color_To_buy</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t13" class="txtfld" value="${data.P_Country}" readonly /></td>
    	</tr>    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Similar_Pro_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t14" class="txtfld" value="${data.NoOfSimilarProducts_Owned}" readonly /></td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Our_Pro_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t15" class="txtfld" value="${data.NoOfOurProducts_Owned}" readonly /></td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Model_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t16" class="txtfld" value="${data.Model_Owned}" readonly /></td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Follow_up_Date</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t17" class="Datefld" value="${data.FollowUp_Date}" readonly  /></td>
    <td>&nbsp;</td></tr>
   <td >&nbsp;</td>
   <tr>
     <td  valign="top"><div align="center">Follow_Up_time</div></td>
      <td >&nbsp;</td>
      <td  valign="top"><input type="text" name="t18"  class="txtfld" value="${data.FollowUp_Time}" readonly /></td>
  </tr>

<tr>
		 <td height="5" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
 </table></td></tr></table>	</td>
    <td>&nbsp;</td>
  </tr>
</form>
    <td >&nbsp;</td>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Phone 1</div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t19"  class="txtfld" value="${data.P_Phone1}" readonly /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Phone 2</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t20" class="txtfld" value="${data.P_Phone2}" readonly /></td>
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
     <td  valign="top"><div align="center">Mobile</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t21" class="txtfld" value="${data.P_Mobile}" readonly /></td>
   <td >&nbsp;</td><td valign="top"><div align="center">Qualification_Id</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t22" class="txtfld" value="${data.Qualification_Id}" readonly /></td>
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
    <td valign="top"><div align="center">Email</div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t23"  class="txtfld" value="${data.P_Email}" readonly /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Fax</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t24" class="txtfld" value="${data.P_Fax}" readonly /></td>
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
    <td valign="top"><div align="center">Plan To Buy Date</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t25" class="Datefld" value="${data.PlanTo_Buy_Date}" readonly  /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Date Of Enquiry</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t26" class="Datefld" value="${data.DateOf_Enquiry}" readonly /></td>
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
     <td valign="top"><div align="center">Assigned_By</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t27" class="txtfld" value="${data.Assigned}" readonly /></td>
   <td >&nbsp;</td><td valign="top"><div align="center">Created_By</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t28" class="txtfld" value="${data.CreatedBy}" readonly /></td>
    <td>&nbsp;</td>
  </tr>
 <td height="20">&nbsp;</td>
 <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">NOTES</div></td>
    <td >&nbsp;</td>
    <td valign="top"><textarea name="textarea" name="ta2" readonly>${data.Notes}</textarea></td>
    <td >&nbsp;</td>
 <td valign="top"><div align="center">Income Group</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t29" class="txtfld" value="${data.Income_Group}" readonly /></td>
    <td>&nbsp;</td>
 </tr>
  
 </table>


    </form>

     <script type="text/javascript" language="javascript">
              var o= new Validator("showpros");
                 o.addValidation("select","req","Can't left blank Prospect Id");
                 

  </script></center>
    </body>
</html>
</c:forEach>
