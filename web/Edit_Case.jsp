<%-- 
    Document   : Update_Case
    Created on : Apr 19, 2013, 11:57:00 PM
    Author     : Yukti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
         <script type="text/javascript" language="javascript">
        var xhro;
    function getCase()
    {

        var v=document.getElementById("case").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Edit_Case_1.jsp?cid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("editc").innerHTML=xhro.responseText;
        }
    }
</script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update case</title>
<style type="text/css">
<!--
.style1 {
	font-size: 23px;
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
        <div id="editc">
    <form name="updatecase" id="updatecaseform">
        

                    <table width="730" cellpadding="0" cellspacing="0" >

  <tr>
    <td width="20" height="40">&nbsp;</td>
    <td colspan="7" valign="top" >
    <p align="center" class="style1">Case Detail</p></td>
    <td width="20">&nbsp;</td>
  </tr>

  <tr>
    <td height="10">&nbsp;</td>
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
    <td valign="top"><div align="center">Case Id<span class="style2">*</span></div></td>
 <s:query dataSource="${ds}" sql="select Case_Id from case_detail_master" var="rs"></s:query>
    <td >&nbsp;</td>
    <td valign="top" ><select id="case" onchange="getCase();" name="select" class="combo">

           <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Case_Id}">${data.Case_Id}</option>
            </c:forEach>

    </select></td><td >&nbsp;</td>
 <td valign="top" ></td>
     <td >&nbsp;</td>
    <<td >&nbsp;</td>
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
    <td height="200">&nbsp;</td>
    <td colspan="3" valign="top" >
		<table border="1"><tr><td>
                            <table width="150%" height="150%" border="0">
		<tr>
		 <td height="5" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
        <tr>
		 <td width="140" height="20" valign="top"><div align="center">Prospect Id<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="select1" class="combo">
    	  <option>--select--</option>
        </select>   </td>
    	</tr>
        <tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
        <tr>
		 <td width="140" height="20" valign="top"><div align="center">Model Id<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="select1" class="combo">
    	  <option>--select--</option>
        </select>   </td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">Color Id<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><select name="select2" class="combo">
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
		 <td   height="20"valign="top"><div align="center">State Id<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><select name="select3" class="combo">
    	  <option>--select--</option>
         </select>   </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
<tr>
		 <td width="140" height="20" valign="top"><div align="center">Status Id<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="select4" class="combo">
    	  <option>--select--</option>

        </select>   </td>
    	</tr>    <td >&nbsp;</td>
		<tr>
		 <td   height="20"valign="top"><div align="center">Predicted Close Date</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top" ><input type="text" name="t1" id="addcal1" class="Datefld"  /></td>
    <td><a href="javascript:showCal('caseupdate1')"><img src="Images/calendar.jpg"/></a></td>
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
                    <table width="150%" height="150%" border="0">

                        <tr>
		 <td height="5" >&nbsp;<td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
        <tr>
		 <td width="140" height="20" valign="top"><div align="center">Created By<span class="style2">*</span></div></td>
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
		 <td width="140" height="20" valign="top"><div align="center">Follow Up Action Id<span class="style2">*</span></div></td>
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
		 <td   height="20"valign="top"><div align="center">Follow Up Date<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top" ><input type="text" name="t2" id="addcal3" class="Datefld"  /></td>
    <td><a href="javascript:showCal('caseupdate2')"><img src="Images/calendar.jpg"/></a></td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Next Plan Of Action Id</div></td>
    	 <td >&nbsp;</td>
    	<td  width="140" valign="top"><select name="select6" class="combo">
    	  <option>--select--</option>
        </select> </td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Next Follow Up Date</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top" ><input type="text" name="t3" id="addcal3" class="Datefld"  /></td>
    <td><a href="javascript:showCal('caseupdate3')"><img src="Images/calendar.jpg"/></a></td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Actual CloseDate</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t4" id="addcal4" class="Datefld"  /></td>
    <td><a href="javascript:showCal('caseupdate4')"><img src="Images/calendar.jpg"/></a></td></tr>
   <td >&nbsp;</td>



 </table></td></tr></table>	</td>
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
    <td valign="top"><div align="center">NOTES</div></td>
    <td >&nbsp;</td>
    <td valign="top"><textarea  name="ta1"></textarea></td>
    <td >&nbsp;</td>
     <td >  <div align="center">Created By<span class="style2">*</span></div></td>
  <td >&nbsp;</td>
    <td valign="top"><select name="select7" class="combo">

      <option value="${data.Created_By}">${data.Created_By}</option>
   </select>    </td>
    <td>&nbsp;</td>
 </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" /></div></td>
<td>&nbsp;</td>
    <td valign="top" ><div align="center"><input type="submit" value="Update" onclick="fun(); return false" class="buttonSubmit"/> </div></td>
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
              var o= new Validator("updatecase");
              o.addValidation("select0","req","Can't left blank Case Id");
                 o.addValidation("select","req","Can't left blank Prospect Id");
                 o.addValidation("select1","req","Can't left blank Model Id");
                 o.addValidation("select2","req","Can't left blank Color Id");
                 o.addValidation("select3","req","Can't left blank State Id");
                 o.addValidation("select4","req","Can't left blank Status Id");
                 o.addValidation("select5","req","Can't left blank Follow Up Action Id");
                 o.addValidation("t2","req","Can't left blank Follow Up Date");
                 
  </script></div></center>
    </body>
</html>

