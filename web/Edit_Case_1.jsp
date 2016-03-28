<%-- 
    Document   : Add_Case
    Created on : Apr 19, 2013, 11:15:45 PM
    Author     : Yukti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<!DOCTYPE HTML PUBLIC "-//W3C+//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<s:query dataSource="${ds}" sql="select * from case_detail_master where Case_Id='${param['cid']}'" var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Add case</title>
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
        <form  method="get" name="updatecase" action="editaction.do">
        

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
     <td </td>
     <td >&nbsp;</td>
     <td valign="top"><div align="center">Case Id<span class="style2">*</span></div></td>
      
   <td >&nbsp;</td>

   <td valign="top" ><input  name="t10" type="text" value="${data.Case_Id}" class="txtfld" readonly/>

           </td>

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
                      	<td width="140" valign="top">
                            <input type="text" value="${data.Model_Id}"  name="t9" class="txtfld" readonly/>
            </td>
    	</tr>

		<tr>
		 <td  height="15">&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top "><div align="center">Color Id<span class="style2">*</span></div></td>
    	         <td >&nbsp;</td>
                 <td  valign="top"><input type="text" value="${data.Color_Id}" name="t8" class="txtfld" readonly/>  </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">State Id<span class="style2">*</span></div></td>
    	         <td >&nbsp;</td>
                 <s:query dataSource="${ds}" sql="select * from state_master" var="rs5"></s:query>
    	<td  valign="top"><select name="select3" class="combo">
    	  <option value="${data.State_Id}">${data.State_Id}</option>
         <c:forEach items="${rs5.rows}" var="data5">
                <option value="${data5.State_Id}" >${data5.State_Desc}</option>
            </c:forEach>


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
    <td width="140" valign="top"><input type="text" value="${data.Status_Id}" class="txtfld" readonly>  </td>
    	</tr>    <td >&nbsp;</td>
		<tr>
		 <td   height="20"valign="top"><div align="center">Predicted Close Date</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top" ><input type="text" name="t1" id="addcal1" class="Datefld" value="${data.Predicted_Close_Date}" /></td>
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
    	<s:query dataSource="${ds}" sql="select * from action_taken_master" var="rs1"></s:query>
                 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="select5" class="combo">
    	  <option value="${data.Follow_Up_Action_Id}">${data.Follow_Up_Action_Id}</option>
           <c:forEach items="${rs1.rows}" var="data1">
                <option value="${data1.Action_Id}" >${data1.Action_Desc}</option>
            </c:forEach>

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
         <td  valign="top" ><input type="text" name="t2" id="addcal3" class="Datefld"  value="${data.Follow_Up_Date}" readonly /></td>
    <td></td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Next Plan Of Action Id<span class="style2">*</span></div></td>
    	 <s:query dataSource="${ds}" sql="select * from action_taken_master" var="rs2"></s:query>
                 <td >&nbsp;</td>
    	<td  width="140" valign="top"><select name="select6" class="combo">
    	  <option value="${data.NextPlanOf_Action_Id}">${data.NextPlanOf_Action_Id}</option>
          <c:forEach items="${rs2.rows}" var="data2">
                <option value="${data2.Action_Id}" >${data2.Action_Desc}</option>
            </c:forEach>

        </select> </td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Next Follow Up Date<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top" ><input type="text" name="t3" id="addcal3" class="Datefld" value="${data.NextFollowUp_Date}" /></td>
    <td><a href="javascript:showCal('caseadd3')"><img src="Images/calendar.jpg"/></a></td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Actual Close Date</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t4" id="addcal4" class="Datefld" value="${data.Actual_Close_Date}" /></td>
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
    <td valign="top"><textarea  name="ta1">${data.Notes}</textarea></td>
    <td >&nbsp;</td>
 <td valign="top"><div align="center">Created By<span class="style2">*</span></div></td>
  <s:query dataSource="${ds}" sql="select * from employee_master" var="rs3"></s:query>
 <td >&nbsp;</td>
    <td valign="top"><select name="select7" class="combo">

      <option value="${data.Created_By}">${data.Created_By}</option>
       <c:forEach items="${rs3.rows}" var="data3">
                <option value="${data3.Emp_Id}">${data3.Emp_Id}</option>
            </c:forEach>

    </select>    </td>
    <td>&nbsp;</td>
 </tr>
  <tr>
  <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" />
    </div></td>
   <td>&nbsp;</td>
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
    </body>
</html>
</c:forEach>