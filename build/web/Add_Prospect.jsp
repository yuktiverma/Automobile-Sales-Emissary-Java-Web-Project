<%-- 
    Document   : Add_Prospect
    Created on : Apr 19, 2013, 12:24:58 PM
    Author     : vidhya
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Prospect</title>
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

<script type="text/javascript" language="javascript">
    var xhro2;
    function getArea()
    {
    var s=document.getElementById("area").value;
         xhro2=new XMLHttpRequest();
        xhro2.onreadystatechange=myfun2;
        xhro2.open("get","area.jsp?aid="+s+"",true);
        xhro2.send();
    }
    function myfun2()
    {

        if(xhro2.readyState==4)
        {
            document.getElementById("ar").innerHTML=xhro2.responseText;
        }
    }
</script>

<script type="text/javascript" language="javascript">
function addDate(){
date = new Date();
var month = date.getMonth()+1;
var day = date.getDate();
var year = date.getFullYear();

if (document.getElementById('addcal3').value == ''){
document.getElementById('addcal3').value = year + '-' + month + '-' + day;
}
}
</script>

          
<script type="text/javascript" language="javascript">
function getCal(){

var date1=document.getElementById('addcal1').value;
var date2=document.getElementById('addcal2').value;
var date3 = date1.split("-");
var date4 = date2.split("-");
if(date4[0]>=date3[0])
    {
        if(date4[1]>=date3[1])
            {
                if(date4[2]>=date3[2])
                    {
                        return true;
                    }
                    else
                        {
                            alert('Plan to buy date cant be before of follow up date');
                        }
            }
            else
                {
                    alert('Plan to buy date cant be before of follow up date');
                }
    }
    else
    {
       alert('Plan to buy date cant be before of follow up date');
    }
}
</script>

</head>

<body onload="addDate();">
       
    <center>
        <form action="addprospect.do" method="get" name="addpros" id="addprosform">
      

                    <table width="745" cellpadding="0" cellspacing="0" >

  <tr>
    <td width="20" height="40">&nbsp;</td>
    <td colspan="7" valign="top" ><p align="center" class="style1">Prospect Detail</p></td>
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
     <td valign="top"><div align="center">Branch Name<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from branch_master" var="rs"></s:query>
     <td valign="top" ><select name="s1" class="combo">
      <option></option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Branch_Id}" >${data.Branch_Name}-${data.Branch_Id}</option>
            </c:forEach>
    </select>    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Status</div></td>
     <td >&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from status_master" var="rs"></s:query>
    <td valign="top"><select name="s2" class="combo">
      <c:forEach items="${rs.rows}" var="data">
                <option value="1" >Active</option>
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
     <td valign="top"><div align="center">Prospect Type<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from prospect_type_master" var="rs"></s:query>
     <td valign="top" ><select name="s3" class="combo">
      <option></option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Prospect_Type_Id}" >${data.Prospect_Type_Desc}</option>
            </c:forEach>
    </select>    </td>
   <td >&nbsp;</td>
    <td valign="top"><div align="center">Industry Name<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from industry_master" var="rs"></s:query>
    <td valign="top"><select name="s4" class="combo">
      <option></option>
      <c:forEach items="${rs.rows}" var="data">
          <option value="${data.Industry_Id}">${data.Industry_Name}</option>
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
    <td valign="top"><input type="text" name="t1" class="txtfld" /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Last Name</div></td>
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
         <s:query dataSource="${ds}" sql="select * from country_name_master" var="rs"></s:query>
    	<td width="140" valign="top"><select name="s5" class="combo" onchange="getState();" id="con">
    	  <option></option>
          <c:forEach items="${rs.rows}" var="data">
              <option value="${data.Country_Name}">${data.Country_Name}</option>
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
    	<td  valign="top"><div id="st">
                <select name="selects" class="combo">
    	  <option></option>
            </select>
            </div></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><div id="city">
            <select name="selectct" class="combo">
    	  <option></option>
          </select>
            </div></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>
<tr>
		 <td width="140" height="20" valign="top"><div align="center">Area Name<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
         <td width="140" valign="top"><div id="ar">
            <select name="selectar" class="combo">
    	  <option></option>
                  </select>
            </div></td>
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
    	<td  valign="top"><textarea name="ta1"></textarea></td>
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
    	<s:query dataSource="${ds}" sql="select * from model_master" var="rs"></s:query>
     <td valign="top" ><select name="s7" class="combo">
             <option></option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.model_Id}" >${data.Model_Name}</option>
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
    	<s:query dataSource="${ds}" sql="select * from color_master" var="rs"></s:query>
     <td valign="top" ><select name="s8" class="combo">
             <option></option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Color_Id}" >${data.Color_Name}</option>
            </c:forEach>
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
    <td><a href="javascript:showCal('proadd1')"><img src="Images/calendar.jpg"/></a></td></tr>
   <td >&nbsp;</td>
   <tr>
     <td  valign="top"><div align="center">Follow_Up_time</div></td>
      <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t8"  class="Txtfld" /></td>
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
   <td >&nbsp;</td><td valign="top"><div align="center">Qualification</div></td>
     <td >&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from qualification_master" var="rs"></s:query>
     <td valign="top" ><select name="s9" class="combo">
      <option></option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Qualification_Id}" >${data.Qualification_Name}</option>
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
    <td valign="top" ><input onblur="getCal();" type="text" name="t14" id="addcal2" class="Datefld"  /></td>
    <td ><a href="javascript:showCal('proadd2')"><img src="Images/calendar.jpg"/></a></td>
    <td  valign="top"><div align="center">Date Of Enquiry</div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t15" id="addcal3"  class="Datefld" /></td>
    <td></td>
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
    <s:query dataSource="${ds}" sql="select * from employee_master" var="rs"></s:query>
     <td valign="top" ><select name="s10" class="combo">
      <option></option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Emp_Id}" >${data.Emp_Id}/${data.Emp_Fname} ${data.Emp_Lname}</option>
            </c:forEach>
    </select>    </td>
   <td >&nbsp;</td><td valign="top"><div align="center">Created_By</div></td>
     <td >&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from employee_master" var="rs"></s:query>
     <td valign="top" ><select name="s11" class="combo">
      <option></option>
      <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Emp_Id}" >${data.Emp_Id}/${data.Emp_Fname} ${data.Emp_Lname}</option>
            </c:forEach>
    </select>    </td>
    <td>&nbsp;</td>
  </tr>
 <td height="20">&nbsp;</td>
 <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">NOTES</div></td>
    <td >&nbsp;</td>
    <td valign="top"><textarea name="ta2"></textarea></td>
    <td >&nbsp;</td>
 <td valign="top"><div align="center">Income Group<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="s12" class="combo">
      <option></option>
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
      <input type="submit" value="Submit" class="buttonSubmit"/>
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
<script type="text/javascript" language="javascript">
              var o= new Validator("addprosform");
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
                  

  </script>
</body>
</html>
