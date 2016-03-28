<%-- 
    Document   : Show_Case
    Created on : Apr 20, 2013, 12:09:49 AM
    Author     : vidhya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<s:query dataSource="${ds}" sql="select * from case_detail_master where Case_Id='${param['cid']}'" var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Show case</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

          <script type="text/javascript" src="JS/cal2.js"></script>
          <script type="text/javascript" src="JS/cal_conf2.js"></script>
          <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
          <link rel="stylesheet" href="CSS/stylesheet.css"/>




</head>

<body><br><br><br>
    <center>
    <form name="showcase" id="showcaseform">
        <table border="1"><tr><td>

                    <table width="730" cellpadding="0" cellspacing="0" >

  <tr>
    <td width="20" height="40">&nbsp;</td>
    <td colspan="7" valign="top" >
    <p align="center" class="style1">Case Detail</p></td>
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
    <td valign="top"><div align="center">Case Id<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top"><select name="select0" class="combo">
      <option>${data.Case_Id}</option>
</select>    </td>
    <td >&nbsp;</td>
 <td >&nbsp;</td>
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
            	 <td width="140" height="20" valign="top"><div align="center">Prospect Id</div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><input type="text" name="t1" class="txtfld" value="${data.Prospect_Id}" readonly /></td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">Model Id</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t2" class="txtfld" value="${data.Model_Id}" readonly /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Color Id</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t3" class="txtfld" value="${data.Color_Id}" readonly /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
<tr>
		 <td width="140" height="20" valign="top"><div align="center">State Id</div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><input type="text" name="t4" class="txtfld" value="${data.State_Id}" readonly /></td>
    	</tr>    <td >&nbsp;</td>
		<tr>
		 <td   height="20"valign="top"><div align="center">Predicted Close Date</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top" ><input type="text" name="t5" class="Datefld" value="${data.Predicted_Close_Date}" readonly /></td>
        <td>&nbsp;</td>
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
		 <td width="170" height="20" valign="top"><div align="center">Follow Up Action Id</div></td>
    	 <td width="30">&nbsp;</td>
         <td width="170" valign="top"><input type="text" name="t6" class="txtfld" value="${data.Follow_Up_Action_Id}" readonly /></td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>


 <tr>
		 <td   height="20"valign="top"><div align="center">Follow Up Date</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top" ><input type="text" name="t7" class="Datefld" value="${data.Follow_Up_Date}" readonly  /></td>
        <td> &nbsp; </td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Next Plan Of Action Id</div></td>
    	 <td >&nbsp;</td>
         <td  width="150" valign="top"><input type="text" name="t8" class="txtfld" value="${data.NextPlanOf_Action_Id}" readonly /></td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Next Follow Up Date</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top" ><input type="text" name="t9" class="Datefld" value="${data.NextFollowUp_Date}" readonly  /></td>
        <td> &nbsp; </td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Actual CloseDate</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t10" class="Datefld" value="${data.Actual_Close_Date}" readonly  /></td>
    <td> &nbsp; </td></tr>
   <td >&nbsp;</td>



 </table></td></tr></table>	</td>
    <td>&nbsp;</td>
  </tr>
    <td >&nbsp;</td>

 <td height="20">&nbsp;</td>
 <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Created By</div></td>
     <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t11" value="${data.Created_By}"class="txtfld" readonly /></td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center">NOTES</div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type= "textarea" name="textarea" name="ta1" value="${data.Notes}" readonly/></td>
    <td >&nbsp;</td>
 
 </tr>
  <tr>
  <td height="20">&nbsp;</td>
    
    
    <td width="140" height="20" valign="top"><div align="center">Status Id</div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><input type="text" name="t12" value="${data.Status_Id}" class="txtfld" readonly /></td>
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

</td></tr></table>
    </form>

     <script type="text/javascript" language="javascript">
              var o= new Validator("showcase");
              o.addValidation("select0","req","Can't left blank Case Id");
                 
  </script></center>
    </body>
</html>
</c:forEach>