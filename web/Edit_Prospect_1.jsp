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
<s:query dataSource="${ds}" sql="select * from prospect_master where Prospect_Id='${param['pid']}'" var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">
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
    function getState()
    {

        var v=document.getElementById("con").value;
       xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","state.jsp?cid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("st").innerHTML=xhro.responseText;
        }
    }
</script>

          <script type="text/javascript" language="javascript">
    var xhro1;
    function getCity()
    {
    var s=document.getElementById("stt").value;
         xhro1=new XMLHttpRequest();
        xhro1.onreadystatechange=myfun1;
        xhro1.open("get","city.jsp?sid="+s+"",true);
        xhro1.send();
    }
    function myfun1()
    {

        if(xhro1.readyState==4)
        {
            document.getElementById("city").innerHTML=xhro1.responseText;
        }
    }
</script>

</head>

<body>
    <center>
        <form action="editprospect.do" name="updatepros" id="updateprosform">
      

                    <table width="750" cellpadding="0" cellspacing="0" border="0">

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
     <td valign="top"><div align="center">Prospect Id<span class="style2">*</span></div></td>
   <td >&nbsp;</td>
   <td valign="top" ><select name="s0" class="combo">
                      <option value="${data.Prospect_Id}" >${data.Prospect_Id}</option>
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
    <s:query dataSource="${ds}" sql="select * from branch_master" var="rs1"></s:query>
     <td valign="top"><div align="center">Branch Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <td valign="top" ><select name="s1" class="combo">
      <option>${data.Branch_Id}</option>
      <c:forEach items="${rs1.rows}" var="data1">
      <option value="${data1.Branch_Id}">${data1.Branch_Name}</option>
      </c:forEach>
    </select>    </td>
   <td >&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from status_master" var="rs2"></s:query>
    <td valign="top"><div align="center">Status_Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="s2" class="combo">
      <option>${data.Status_Id}</option>
      <c:forEach items="${rs2.rows}" var="data2">
      <option value="${data2.Status_Id}">${data2.Status_Desc}</option>
      </c:forEach>
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
    <s:query dataSource="${ds}" sql="select * from prospect_type_master" var="rs3"></s:query>
     <td valign="top"><div align="center">Prospect Type Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <td valign="top" ><select name="s3" class="combo">
      <option>${data.Prospect_Type_Id}</option>
      <c:forEach items="${rs3.rows}" var="data3">
      <option value="${data3.Prospect_Type_Id}">${data3.Prospect_Type_Desc}</option>
      </c:forEach>
    </select>    </td>
   <td >&nbsp;</td>
   <s:query dataSource="${ds}" sql="select * from industry_master" var="rs4"></s:query>
    <td valign="top"><div align="center">Industry Id<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="s4" class="combo">
      <option>${data.Industry_Id}</option>
      <c:forEach items="${rs4.rows}" var="data4">
      <option value="${data4.Industry_Id}">${data4.Industry_Name}</option>
      </c:forEach>
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
    <td valign="top"><input type="text" name="t1" class="txtfld" value="${data.Prospect_Fname}" /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Last Name </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t2" class="txtfld" value="${data.Prospect_Lname}" /></td>
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
            <s:query dataSource="${ds}" sql="select * from country_name_master" var="rs5"></s:query>
		 <td width="140" height="20" valign="top"><div align="center">Country<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><select onchange="getState();" id="con" name="s5" class="combo">
    	  <option>${data.P_Country}</option>
          <option>---Select---</option>
          <c:forEach items="${rs5.rows}" var="data5">
      <option value="${data5.Country_Name}">${data5.Country_Name}</option>
      </c:forEach>
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
    	<td  valign="top"><select id="st" name="selects" class="combo">
    	  <option>${data.P_State}</option>

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
    	<td  valign="top"><select id="city" name="selectct" class="combo">
    	  <option>${data.P_City}</option>
        </select>   </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
<tr>
		 <td width="140" height="20" valign="top"><div align="center">Area Id<span class="style2">*</span></div></td>
    	 <s:query dataSource="${ds}" sql="select * from area_master" var="rs6"></s:query>
                 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="s6" class="combo">
    	  <option>${data.P_Area_Id}</option>
          <c:forEach items="${rs6.rows}" var="data6">
      <option value="${data6.P_Area_Id}">${data6.P_Area_Name}</option>
      </c:forEach>
        </select>   </td>
    	</tr>    <td >&nbsp;</td>
		<tr>
		 <td   height="20"valign="top"><div align="center">ZipCode<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t3" class="txtfld" value="${data.P_ZipCode}" /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Address<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><textarea name="ta1">${data.P_StreetAddress}</textarea></td>
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
    	 <s:query dataSource="${ds}" sql="select * from model_master" var="rs7"></s:query>
                 <td width="30">&nbsp;</td>
    	<td width="140" valign="top"><select name="s7" class="combo">
    	  <option>${data.Model_To_Buy}</option>
          <c:forEach items="${rs7.rows}" var="data7">
      <option value="${data7.Model_Id}">${data7.Model_Name}</option>
      </c:forEach>
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
             	 <s:query dataSource="${ds}" sql="select * from color_master" var="rs8"></s:query>
    	<td  valign="top"><select name="s8" class="combo">
    	  <option>${data.Color_To_Buy}</option>
          <c:forEach items="${rs8.rows}" var="data8">
      <option value="${data8.Color_Id}">${data8.Color_Name}</option>
      </c:forEach>
        </select>   </td>
    	</tr>    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Similar_Pro_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t4" class="txtfld" value="${data.NoOfSimilarProducts_Owned}" /></td>
    	</tr>

    <td >&nbsp;</td>
 <tr>
		 <td   height="20"valign="top"><div align="center">Number_Of_Our_Pro_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t5" class="txtfld" value="${data.NoOfOurProducts_Owned}" /></td>
    	</tr>
      <td >&nbsp;</td>
      <tr>
		 <td   height="20"valign="top"><div align="center">Model_owned</div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><input type="text" name="t6" class="txtfld" value="${data.Model_Owned}" /></td>
    	</tr>
        <td >&nbsp;</td>
   <tr>
    <td valign="top"><div align="center">Follow_up_Date<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t7" id="addcal1" class="Datefld" value="${data.FollowUp_Date}"  /></td>
    <td><a href="javascript:showCal('proupdate1')"><img src="Images/calendar.jpg"/></a></td></tr>
   <td >&nbsp;</td>
   <tr>
     <td  valign="top"><div align="center">Follow_Up_time</div></td>
      <td >&nbsp;</td>
      <td  valign="top"><input type="text" name="t8"  class="txtfld" value="${data.FollowUp_Time}" /></td>
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
    <td valign="top"><input type="text" name="t9"  class="txtfld" value="${data.P_Phone1}" /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Phone 2</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t10" class="txtfld" value="${data.P_Phone2}" /></td>
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
    <td  valign="top"><input type="text" name="t11" class="txtfld" value="${data.P_Mobile}" /></td>
   <td >&nbsp;</td><td valign="top"><div align="center">Qualification_Id</div></td>
     <td >&nbsp;</td>
         	 <s:query dataSource="${ds}" sql="select * from qualification_master" var="rs9"></s:query>
    <td valign="top"><select name="s9" class="combo">
      <option>${data.Qualification_Id}</option>
      <c:forEach items="${rs9.rows}" var="data9">
      <option value="${data9.Qualification_Id}">${data9.Qualification_Name}</option>
      </c:forEach>
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
    <td valign="top"><input type="text" name="t12"  class="txtfld" value="${data.P_Email}" /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Fax</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t13" class="txtfld" value="${data.P_Fax}" /></td>
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
    <td valign="top" ><input type="text" name="t14" id="addcal2" class="Datefld" value="${data.PlanTo_Buy_Date}"  /></td>
    <td ><a href="javascript:showCal('proupdate2')"><img src="Images/calendar.jpg"/></a></td>
    <td  valign="top"><div align="center">Date Of Enquiry</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t15" id="addcal3"  class="Datefld" value="${data.DateOf_Enquiry}" /></td>
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
     <s:query dataSource="${ds}" sql="select * from employee_master" var="rs10"></s:query>
    <td valign="top"><select name="s10" class="combo">
      <option>${data.Assigned}</option>
      <c:forEach items="${rs10.rows}" var="data10">
      <option value="${data10.Emp_Id}">${data10.Emp_Id}</option>
      </c:forEach>
    </select>    </td>
   <td >&nbsp;</td><td valign="top"><div align="center">Created_By</div></td>
     <td >&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from employee_master" var="rs11"></s:query>
    <td valign="top"><select name="s11" class="combo">
      <option>${data.CreatedBy}</option>
      <c:forEach items="${rs11.rows}" var="data11">
      <option value="${data11.Emp_Id}">${data11.Emp_Id}</option>
      </c:forEach>
    </select>    </td>
    <td>&nbsp;</td>
  </tr>
 <td height="20">&nbsp;</td>
 <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">NOTES</div></td>
    <td >&nbsp;</td>
    <td valign="top"><textarea name="ta2">${data.Notes}</textarea></td>
    <td >&nbsp;</td>
 <td valign="top"><div align="center">Income Group<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="s12" class="combo">
      <option>${data.Income_Group}</option>
      <option value="Grade A">Grade A</option>
      <option value="Grade B">Grade B</option>
      <option value="Grade C">Grade C</option>
      <option value="Grade D">Grade D</option>
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
             var o= new Validator("updateprosform");
                  
                  o.addValidation("s1","req","Branch name can't left blank ");
                  o.addValidation("s3","req","Prospect type can't left blank ");
                  o.addValidation("s4","req","Industry name can't left blank ");
                  o.addValidation("t1","req","First name can't left blank ");
                  o.addValidation("s5","req","Country name can't left blank ");
                  o.addValidation("selects","req","State name can't left blank");
                  o.addValidation("selectct","req","City name can't left blank");
                  o.addValidation("selectar","req","Area name can't left blank");
                  o.addValidation("t3","req","ZipCode can't left blank");
                  o.addValidation("t3","numeric","ZipCode in numeric only");
                  o.addValidation("ta1","req","Street address can't left blank");
                  o.addValidation("s7","req","Model can't left blank");
                  o.addValidation("s8","req","Color can't left blank");
                  o.addValidation("t9","req","Phone1 can't left blank");
                  o.addValidation("t9","numeric","Enter numeric value only");
                  o.addValidation("t7","req","Follow up date can't left blank");
                  o.addValidation("t14","req","Plan to buy date can't left blank");
                  o.addValidation("s12","req","Income Group can't left blank");

  </script></center>
    </body>
</html>
</c:forEach>
