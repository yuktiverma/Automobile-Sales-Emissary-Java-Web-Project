<%--
    Document   : Add_Area
    Created on : Apr 22, 2013, 2:49:33 PM
    Author     : Disha
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Add_Area_Details</title>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>


<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>


 <script type="text/javascript" language="javascript">
    var xhro;
    function getCity()
    {

        var v=document.getElementById("city").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","city2.jsp?mid="+v+"",true);
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

</head>

<body>
    <div style="width: 648px; height: 350px">
    <center>
       
  <form name="addarea" id="adddetailsform" method="get" action="Add_Area1.do">
<br><br>
            <table border="1"><tr><td>
<table width="500" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="30">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Add Area Details </div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center" class="whfont">City_Id<span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from city_name_master" var="rs"></s:query>
    <td valign="top">
        <select name="t1" class="combo"onchange="getCity();" id="city">
            <option value="select">--select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.City_Id}" >${data.City_Name}</option>
            </c:forEach>
    </select>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center" class="whfont">Area Name<span class="style2"></span>  </div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t2" class="txtfld" />
    </td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
      <td></td>
    <td height="20">&nbsp;</td>
    <td valign="top">
        <div align="center">
            <input type="reset" value="Reset" class="buttonSubmit" />
        </div>
    </td>
    <td valign="top">
        <div align="center">
            <input type="submit" name="Submit2" value="Submit"  onclick="fun(); return false" class="buttonSubmit" />
        </div>
    </td>
    <td>&nbsp;</td>
  </tr>


  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
                    </td></tr></table>
        </form>
 




    </center>
<script type="text/javascript" language="javascript">
              var o= new Validator("adddetailsform");
                  o.addValidation("t1","req","Can't left blank ");
                  o.addValidation("t2","req","Can't left blank ");
                  
  </script>
    </div>
    </body>
</html>







