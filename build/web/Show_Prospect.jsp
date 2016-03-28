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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Prospect</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

          <script type="text/javascript" src="JS/cal2.js"></script>
          <script type="text/javascript" src="JS/cal_conf2.js"></script>
          <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
          <link rel="stylesheet" href="CSS/stylesheet.css"/>


<script type="text/javascript" language="javascript">
    var xhro;
    function getDetail()
    {

        var v=document.getElementById("pros").value;
       xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Show_Prospect_1.jsp?pid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("proform").innerHTML=xhro.responseText;
        }
    }
</script>


</head>

<body>
    <center>
        <div id="proform">
    <form name="showpros" id="showprosform">
       

        <table width="730" cellpadding="0" cellspacing="0" border="0">

  <tr>
    <td width="20" height="40">&nbsp;</td>
    <td colspan="7" valign="top"> <p align="center" class="style1">Prospect Detail</p></td>
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
   
   <s:query dataSource="${ds}" sql="select Prospect_Id from prospect_master" var="rs"></s:query>
   <td >&nbsp;</td>
   <td valign="top" ><select name="select" class="combo" id="pros" onchange="getDetail();">
      <option>--select--</option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Prospect_Id}" >${data.Prospect_Id}</option>
            </c:forEach>
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
     <td valign="top" ><input type="text" name="t1" class="txtfld" readonly />    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Status_Id</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t2" class="txtfld" readonly />    </td>
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
     <td valign="top" ><input type="text" name="t3" class="txtfld" readonly />    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Industry Id</div></td>
     <td >&nbsp;</td>
     <td valign="top"><input type="text" name="t4" class="txtfld" readonly />    </td>
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
    <td valign="top"><input type="text" name="t5" class="txtfld" readonly /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Last Name </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t6" class="txtfld" readonly /></td>
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
         <td width="140" valign="top"><input type="text" name="t7" class="txtfld" readonly />   </td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">State</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t8" class="txtfld" readonly /> </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t9" class="txtfld" readonly /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
<tr>
		 <td width="140" height="20" valign="top"><div align="center">Area Id</div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><input type="text" name="t10" class="txtfld" readonly /></td>
    	</tr>    <td >&nbsp;</td>
		<tr>
		 <td   height="20"valign="top"><div align="center">ZipCode</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t11" class="txtfld" readonly /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Address</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><textarea name="textarea" name="ta1" readonly></textarea></td>
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
    	<td width="140" valign="top"><input type="text" name="t12" class="txtfld" readonly /></td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">Color_To_buy</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t13" class="txtfld" readonly /></td>
    	</tr>    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Similar_Pro_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t14" class="txtfld" readonly /></td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Our_Pro_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t15" class="txtfld" readonly /></td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Model_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t16" class="txtfld" readonly /></td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Follow_up_Date</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t17" class="Datefld" readonly  /></td>
    <td>&nbsp;</td></tr>
   <td >&nbsp;</td>
   <tr>
     <td  valign="top"><div align="center">Follow_Up_time</div></td>
      <td >&nbsp;</td>
      <td  valign="top"><input type="text" name="t18"  class="txtfld" readonly /></td>
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
    <td valign="top"><input type="text" name="t19"  class="txtfld" readonly /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Phone 2</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t20" class="txtfld" readonly /></td>
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
    <td  valign="top"><input type="text" name="t21" class="txtfld" readonly /></td>
   <td >&nbsp;</td><td valign="top"><div align="center">Qualification_Id</div></td>
     <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t22" class="txtfld" readonly /></td>
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
    <td valign="top"><input type="text" name="t23"  class="txtfld" readonly /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Fax</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t24" class="txtfld" readonly /></td>
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
    <td valign="top" ><input type="text" name="t25" class="Datefld" readonly  /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Date Of Enquiry</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t26" class="Datefld" readonly /></td>
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
    <td valign="top"><input type="text" name="t27" class="txtfld" readonly /></td>
   <td >&nbsp;</td><td valign="top"><div align="center">Created_By</div></td>
     <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t28" class="txtfld" readonly /></td>
    <td>&nbsp;</td>
  </tr>
 <td height="20">&nbsp;</td>
 <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">NOTES</div></td>
    <td >&nbsp;</td>
    <td valign="top"><textarea name="textarea" name="ta2" readonly></textarea></td>
    <td >&nbsp;</td>
 <td valign="top"><div align="center">Income Group</div></td>
     <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t29" class="txtfld" readonly /></td>
    <td>&nbsp;</td>
 </tr>
  
 </table>


    </form>

     <script type="text/javascript" language="javascript">
              var o= new Validator("showpros");
                 o.addValidation("select","req","Can't left blank Prospect Id");
                 

  </script>
    </div>
    </center>
    </body>
</html>
