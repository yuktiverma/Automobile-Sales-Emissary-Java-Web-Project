<%-- 
    Document   : Update_Prospect
    Created on : Apr 19, 2013, 3:55:26 PM
    Author     : Yukti
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
        <title>Update Prospect</title>
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
        xhro.open("get","Edit_Prospect_1.jsp?pid="+v+"",true);
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

<body><br>
    <center>
        <div id="proform">
    <form name="updatepros" id="updateprosform">
      

                    <table width="750" cellpadding="0" cellspacing="0" border="0" >

  <tr>
    <td width="20" height="40">&nbsp;</td>
    <td colspan="7" valign="top" > <p align="center" class="style1">Prospect Detail</p></td>
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
     <td </td>
     <td >&nbsp;</td>
     <s:query dataSource="${ds}" sql="select Prospect_Id,Prospect_Fname,Prospect_Lname from prospect_master" var="rs"></s:query>
     <td valign="top"><div align="center">Prospect Id<span class="style2">*</span></div></td>
   <td >&nbsp;</td>
   <td valign="top" ><select onchange="getDetail();" id="pros" name="select" class="combo">
      <option>--select--</option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Prospect_Id}" >${data.Prospect_Id}/${data.Prospect_Fname} ${data.Prospect_Lname}</option>
            </c:forEach>
    </select></td>
     <td >&nbsp;</td>
     <td >&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
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
     <td valign="top"><div align="center">Branch Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <td valign="top" ><select name="select1" class="combo">
      <option>--select--</option>
    </select>    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Status_Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="select2" class="combo">
      <option>--select--</option>
    </select>    </td>
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
     <td valign="top"><div align="center">Prospect Type Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <td valign="top" ><select name="select3" class="combo">
      <option>--select--</option>
    </select>    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Industry Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="select4" class="combo">
      <option>--select--</option>
    </select>    </td>
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
    <td valign="top"><div align="center">First Name<span class="style2">*</span> </div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t1" class="txtfld" /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Last Name </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t2" class="txtfld" /></td>
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
		 <td width="140" height="20" valign="top"><div align="center">Country<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="select5" class="combo">
    	  <option>--select--</option>
        </select>   </td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">State<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><select name="select6" class="combo">
    	  <option>--select--</option>
<option>UP</option>
            </select>   </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City <span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><select name="select7" class="combo">
    	  <option>--select--</option>
          <option> Noida </option>
        </select>   </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
<tr>
		 <td width="140" height="20" valign="top"><div align="center">Area Id<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="select8" class="combo">
    	  <option>--select--</option>

        </select>   </td>
    	</tr>    <td >&nbsp;</td>
		<tr>
		 <td   height="20"valign="top"><div align="center">ZipCode<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t3" class="txtfld"/></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Address<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><textarea name="textarea" name="ta1"></textarea></td>
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
		 <td width="140" height="20" valign="top"><div align="center">Model_To_Buy<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="select9" class="combo">
    	  <option>--select--</option>
        </select>   </td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">Color_To_buy<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><select name="select10" class="combo">
    	  <option>--select--</option>
        </select>   </td>
    	</tr>    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Similar_Pro_owned</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t4" class="txtfld" /></td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Our_Pro_owned</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t5" class="txtfld" /></td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Model_owned</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t6" class="txtfld" /></td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Follow_up_Date<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t7" id="addcal1" class="Datefld"  /></td>
    <td><a href="javascript:showCal('proupdate1')"><img src="Images/calendar.jpg"/></a></td></tr>
   <td >&nbsp;</td>
   <tr>
     <td  valign="top"><div align="center">Follow_Up_time</div></td>
      <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t8"  class="txtfld" /></td>
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
    <td valign="top"><div align="center">Phone 1<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t9"  class="txtfld"/></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Phone 2</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t10" class="txtfld" /></td>
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
    <td  valign="top"><input type="text" name="t11" class="txtfld" /></td>
   <td >&nbsp;</td><td valign="top"><div align="center">Qualification_Id</div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="select11" class="combo">
      <option>--select--</option>
    </select>    </td>
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
    <td valign="top"><input type="text" name="t12"  class="txtfld"/></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Fax</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t13" class="txtfld" /></td>
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
    <td valign="top"><div align="center">Plan To Buy Date<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t14" id="addcal2" class="Datefld"  /></td>
    <td ><a href="javascript:showCal('proupdate2')"><img src="Images/calendar.jpg"/></a></td>
    <td  valign="top"><div align="center">Date Of Enquiry</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t15" id="addcal3"  class="Datefld" /></td>
    <td><a href="javascript:showCal('proupdate3')"><img src="Images/calendar.jpg"/></a></td>
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
    <td valign="top"><select name="select12" class="combo">
      <option>--select--</option>
    </select>    </td>
   <td >&nbsp;</td><td valign="top"><div align="center">Created_By</div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="select13" class="combo">
      <option>--select--</option>
    </select>    </td>
    <td>&nbsp;</td>
  </tr>
 <td height="20">&nbsp;</td>
 <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">NOTES</div></td>
    <td >&nbsp;</td>
    <td valign="top"><textarea name="textarea" name="ta2"></textarea></td>
    <td >&nbsp;</td>
 <td valign="top"><div align="center">Income Group<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="select14" class="combo">
      <option>--select--</option>
    </select>    </td>
    <td>&nbsp;</td>
 </tr>
  <tr>
  <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center">
      <input type="reset" value="Reset" class="buttonSubmit" />
    </div></td>

    <td valign="top" ><div align="center">
      <input type="submit" value="Update" onclick="fun(); return false" class="buttonSubmit"/>
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

     <script type="text/javascript" language="javascript">
              var o= new Validator("updatepros");
                 o.addValidation("select","req","Can't left blank Prospect Id");
                 o.addValidation("select1","req","Can't left blank Branch Id");
                 o.addValidation("select2","req","Can't left blank Status Id");
                 o.addValidation("select3","req","Can't left blank Prospect Type Id");
                 o.addValidation("select4","req","Can't left blank Industry Id");
                 o.addValidation("select5","req","Can't left blank Country");
                 o.addValidation("select6","req","Can't left blank State");
                 o.addValidation("select7","req","Can't left blank City");
                 o.addValidation("select8","req","Can't left blank Area Id");
                 o.addValidation("select9","req","Can't left blank Model To Buy");
                 o.addValidation("select10","req","Can't left blank Color To Buy");
                 o.addValidation("select14","req","Can't left blank Income Group");
                 o.addValidation("t1","req","Can't left blank First Name");
                 o.addValidation("t7","req","Can't left blank Follow Up Date");
                 o.addValidation("t9","req","Can't left blank Phone 1");
                 o.addValidation("t9","numeric","Phone Number must in numeric format");
                 o.addValidation("t14","req","Can't left blank Plan To Buy Date");
                 o.addValidation("ta1","req","Can't left blank Street Address");

  </script>
    </div></center>
    </body>
</html>

