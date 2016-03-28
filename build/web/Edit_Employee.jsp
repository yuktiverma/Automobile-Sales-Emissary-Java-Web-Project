<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from employee_master where Emp_Id=${param['Emp_Id']} " var="rs1"></s:query>
<c:forEach items="${rs1.rows}" var="data1">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Edit Employee Page</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

          <script type="text/javascript" src="JS/cal2.js"></script>
          <script type="text/javascript" src="JS/cal_conf2.js"></script>
          <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
          <link rel="stylesheet" href="CSS/stylesheet.css"/>

          <script type="text/javascript">

function FillAdd(f)
{
  if(f.checkbox.checked == true)
{

    f.t10.value=f.t5.value;
    f.t11.value=f.t6.value;
    f.t12.value=f.t7.value;
    f.t13.value=f.t8.value;
    f.t14.value=f.t9.value;

}
}

</script>

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
    function getState1()
    {

        var v=document.getElementById("con1").value;
        xhro2=new XMLHttpRequest();
        xhro2.onreadystatechange=myfun2;
        xhro2.open("get","state1.jsp?cid="+v+"",true);
        xhro2.send();
    }
    function myfun2()
    {

        if(xhro2.readyState==4)
        {
            document.getElementById("st1").innerHTML=xhro2.responseText;
        }
    }
</script>

           <script type="text/javascript" language="javascript">
    var xhro3;
    function getCity1()
    {
    var s1=document.getElementById("stt1").value;
         xhro3=new XMLHttpRequest();
        xhro3.onreadystatechange=myfun3;
        xhro3.open("get","city1.jsp?sid1="+s1+"",true);
        xhro3.send();
    }
    function myfun3()
    {

        if(xhro3.readyState==4)
        {
            document.getElementById("city1").innerHTML=xhro3.responseText;
        }
    }
</script>



</head>

<body>
    <center>
        <form name="editemp" id="editempform"  action="editemp.do" method="get">
        
<table width="648" cellpadding="0" cellspacing="0">

  <tr>
    <td width="40" height="40">&nbsp;</td>
    <td colspan="7" valign="top"><p align="center" class="style1">Update The Details Of Employee  </p></td>
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
     <td valign="top"><div align="center">Branch Name<span class="style2">*</span></div></td>
     <td >&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from branch_master" var="rs"></s:query>
    <td valign="top"> <select name="selectb"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Branch_Id}" >${data.Branch_Name}</option>
            </c:forEach>
    </select></td>
   <td >&nbsp;</td>
   <td  valign="top"><div align="center">Employee ID </div></td>
    <td >&nbsp;</td>
    <td  valign="top" ><input type="text" name="t1" class="txtfld"  value="${param['Emp_Id']}"readonly/></td>
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
    <td valign="top"><div align="center">Designation Name<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from designation_master" var="rs"></s:query>

    <td valign="top"> <select name="selectd"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Desig_Id}" >${data.Desig_Name}</option>
            </c:forEach>
    </select></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Employee Code <span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td  valign="top" ><input type="text" name="t2" class="txtfld"  value="${data1.Emp_Code}" /></td>
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
    <td valign="top"><input type="text" name="t3" class="txtfld" value="${data1.Emp_Fname}"  /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Last Name </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t4" class="txtfld" value="${data1.Emp_Lname}" /></td>
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
    <td colspan="3" valign="top" bgcolor=lightgray><div align="center">Permanent Address
        <input type="checkbox" name="checkbox"  onclick="FillAdd(this.form)" />
    Click If same as current </div></td>
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
		 <td width="140" height="20" valign="top"><div align="center">Country<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
         <s:query dataSource="${ds}" sql="select * from country_name_master" var="rs"></s:query>
    	<td width="140" valign="top"><select name="selectc" class="combo" onchange="getState();" id="con">
    	   <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Country_Name}" >${data.Country_Name}</option>
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
    	<td  valign="top"><div id="st" >

            <select name="selects" class="combo" >
            <option value="">--select--</option>

    </select>
        </div></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City <span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><div id="city">
        <select name="selectct" class="combo">
            <option value="select">--select--</option>
    </select>
            </div> </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">ZipCode</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t5" class="txtfld" value="${data1.Current_ZipCode}"  /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Number </div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t6"class="txtfld" value="${data1.Current_StreetAddress}" /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 1<span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t7"  class="txtfld" value="${data1.Current_Phone1}" /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 2</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t8" class="txtfld"  value="${data1.Current_Phone2}"/></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Mobile</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t9"  class="txtfld" value="${data1.Current_Mobile}" /></td>
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
		 <td width="140" height="20" valign="top"><div align="center">Country<span class="style2">*</span></div></td>
    	 <td width="30">&nbsp;</td>
    	<s:query dataSource="${ds}" sql="select * from country_name_master"  var="rs"></s:query>
        <td width="140" valign="top"><select name="selectc1" class="combo" onchange="getState1();"  id="con1">
    	   <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Country_Name}" >${data.Country_Name}</option>
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
         <td  valign="top"><div id="st1">

            <select name="selects1" class="combo" >
            <option value="">--select--</option>

    </select>
                 </div>
         </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">City <span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
         <td  valign="top"><div id="city1">
        <select name="selectct1" class="combo">
            <option value="select">--select--</option>
    </select></div>
             </td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">ZipCode</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t10" class="txtfld"  value="${data1.Perm_ZipCode}"/></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Street Number</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t11" class="txtfld"  value="${data1.Perm_StreetAddress}" /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 1 <span class="style2">*</span></div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t12" class="txtfld"  value="${data1.Perm_Phone1}" /></td>
    	</tr>
		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Phone 2</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t13" class="txtfld"value="${data1.Perm_Phone2}" /></td>
    	</tr>

		<tr>
		 <td height="15" >&nbsp;</td>
    	 <td >&nbsp;</td>
    	<td >&nbsp;</td>
    	</tr>

		<tr>
		 <td   height="20"valign="top"><div align="center">Mobile</div></td>
    	 <td >&nbsp;</td>
    	<td  valign="top"><input type="text" name="t14"  class="txtfld" value="${data1.Perm_Mobile}" /></td>
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
    <td valign="top"><div align="center">Email Id <span class="style2">*</span> </div></td>
    <td >&nbsp;</td>
    <td valign="top"><input type="text" name="t15"  class="txtfld" value="${data1.Email}" /></td>
    <td >&nbsp;</td>
    <td  valign="top"><div align="center">Status </div></td>
    <td >&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from status_master " var="rs"></s:query>
    <td valign="top"><select name="selectst"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Status_Id}" >${data.Status_Desc}</option>
            </c:forEach>
    </select>
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
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Date Of joining</div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t17" id="addcal1" class="Datefld" value="${data1.DateOf_Joining}"  /></td>
    <td ><a href="javascript:showCal('empedit')"><img src="Images/calendar.jpg"/></a></td>
    <td  valign="top"><div align="center">Date Of leaving </div></td>
    <td >&nbsp;</td>
    <td  valign="top"><input type="text" name="t18" id="addcal2"  class="Datefld" value="${data1.DateOf_Leaving}" /></td>
    <td><a href="javascript:showCal('empedit1')"><img src="Images/calendar.jpg"/></a></td>
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
    <td valign="top"><select name="selectacc" class="combo">
      <option >--Select--</option>
            <option value="0">No</option>
       <option value="1">Yes</option>
       </select>    </td>
   <td >&nbsp;</td><td valign="top"><div align="center">Access To All Teams</div></td>
     <td >&nbsp;</td>
    <td valign="top"><select name="selectacc1" class="combo">
 <option >--Select--</option>
      <option value="0">No</option>
       <option value="1">Yes</option>
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td ></td>
    <td>&nbsp;</td>
    <td valign="top" ><div align="center"> <input type="reset" value="Reset" class="buttonSubmit" />
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
              var o= new Validator("editempform");
                 o.addValidation("selectb","req","Can't left blank Branch Name");
                  o.addValidation("t1","req","Can't left blank Designation ");
                  o.addValidation("t2","req","Can't left blank Employee Code");
                  o.addValidation("t2","numeric","Employee Code enter in numeric format");
                   o.addValidation("t3","req","Can't left blank Employee First Name");
                  o.addValidation("selectc1","req","Can't left Blank Country");
                  o.addValidation("selects1","req","Can't left Blank State");
                  o.addValidation("selectct1","req","Can't left Blank City");
                   o.addValidation("t7","req","Can't left blank Phone 1");
                  o.addValidation("t7","numeric","Phone Number enter in numeric format");
                  o.addValidation("selectc2","req","Can't left blank Country");
                  o.addValidation("selects2","req","Can't left blank State");
                  o.addValidation("selectct2","req","Can't left blank City");
                   o.addValidation("t12","req","Can't left blank Phone 1");
                     o.addValidation("t12","numeric","Phone Number enter in numeric format");
                  o.addValidation("t15","req","Can't left blank Email_Id");


  </script></center>
</body>
</html>
</c:forEach>