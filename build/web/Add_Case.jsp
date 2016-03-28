<%-- 
    Document   : Add_Case
    Created on : Apr 19, 2013, 11:15:45 PM
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
       <title>Add case</title>
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
    function getCase()
    {

        var v=document.getElementById("pcase").value;
       xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Add_Case_1.jsp?pid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("pcase1").innerHTML=xhro.responseText;
        }
    }
</script>


</head>

<body>
    <div id="pcase1"><center>
    <form name="addcase" id="addcaseform">
        <table width="730" cellpadding="0" cellspacing="0"  border="0">

  <tr>
    <td width="20" height="40">&nbsp;</td>
    <td colspan="7" valign="top" ><p align="center" class="style1">Case Detail</p></td>
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
     <s:query dataSource="${ds}" sql="select Prospect_Id from prospect_master where Prospect_Id not in(select Prospect_Id from case_detail_master)" var="rs"></s:query>
     <td valign="top"><div align="center">Prospect Id<span class="style2">*</span></div></td>
   <td >&nbsp;</td>
   <td valign="top" ><select onchange="getCase();" id="pcase" name="select" class="combo">
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
    <td height="25">&nbsp;</td>
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
          <option> Noida </option>
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
    <td><a href="javascript:showCal('caseadd1')"><img src="Images/calendar.jpg"/></a></td>
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
    <td></td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Next Plan Of Action Id<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  width="140" valign="top"><select name="select6" class="combo">
    	  <option>--select--</option>
        </select> </td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Next Follow Up Date<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top" ><input type="text" name="t3" id="addcal3" class="Datefld"  /></td>
    <td><a href="javascript:showCal('caseadd3')"><img src="Images/calendar.jpg"/></a></td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Actual Close Date</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t4" id="addcal4" class="Datefld"  /></td>
    <td><a href="javascript:showCal('caseadd4')"><img src="Images/calendar.jpg"/></a></td></tr>
   <td >&nbsp;</td>



 </table></td></tr></table>	</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="25">&nbsp;</td>
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
    <td valign="top"><textarea name="textarea" name="ta1"></textarea></td>
    <td >&nbsp;</td>
 <td valign="top"><div align="center">Created By<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="select7" class="combo">
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

    <td valign="top" ></td>
    <td><div align="center">
      <input type="submit" value="Submit" onclick="fun(); return false" class="buttonSubmit"/>
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
              var o= new Validator("addcase");
                 o.addValidation("select","req","Can't left blank Prospect Id");
                 o.addValidation("select1","req","Can't left blank Model Id");
                 o.addValidation("select2","req","Can't left blank Color Id");
                 o.addValidation("select3","req","Can't left blank State Id");
                 o.addValidation("select4","req","Can't left blank Status Id");
                 o.addValidation("select5","req","Can't left blank Follow Up Action Id");
                 o.addValidation("select6","req","Can't left blank Next Plan Of Action Id");
                 o.addValidation("select7","req","Can't left blank Created By");
                 o.addValidation("t2","req","Can't left blank Follow Up Date");
                 o.addValidation("t3","req","Can't left blank Next Follow Up Date");
                                  
  </script></center>
     </div>
    </body>
</html>