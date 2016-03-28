<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>


<%--
    Document   : Fail
    Created on : Apr 11, 2013, 6:56:46 PM
    Author     : Yukti
--%>


<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Add Team Type Page</title>
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style>

<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>


 <script type="text/javascript" language="javascript">
    var xhro;
    function getModel()
    {
        
        var v=document.getElementById("base").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","model.jsp?mid="+v+"",true);
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
     <div style="width: 648px ; height:350px; background: white;">
    <center>
        <form name="addteambm" action="addteamtype.do" method="get">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top" ><div align="center" class="style1">Team Type Creation </div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center" class="whfont">Team Type <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from basemodel_master" var="rs"></s:query>

    <td valign="top">
   <select name="selecttt" onchange="getModel();" id="base" class="combo" >
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.BaseModel_Id}" >${data.BaseModel_Name}</option>
            </c:forEach>
    </select>
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
   <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center" class="whfont">Team Type Name<span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><div id="st" > <select name="selectttn" class="combo">
            <option value="select">--select--</option>
    </select></div>
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

  

  <tr>
    <td height="20">&nbsp;</td>
    <td ></td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" />
      <input type="submit" name="Submit2" value="Submit"  onclick="fun(); return false" class="buttonSubmit" />
    </div></td>
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
              var o= new Validator("addteambm");
                 o.addValidation("selecttt","req","Can't left blank Team Type");
                 o.addValidation("selectttn","req","Can't left Blank Team Type Name");
       </script>

     </div>

</body>
</html>
