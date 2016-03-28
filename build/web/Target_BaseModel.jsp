<%-- 
    Document   : Target_BaseModel
    Created on : 3 May, 2013, 11:02:49 AM
    Author     : Shimmu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Branch_Name</title>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>
<link rel="stylesheet" href="stylesheet.css"/>

<script type="text/javascript" language="javascript">
    var xhro;
    function getModel()
    {

        var v=document.getElementById("base").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","model_1.jsp?mid="+v+"",true);
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
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:set var="r" value="${requestScope['rs']}"></c:set>

    <br><br>

    <center>
        <form action="targetbaseaction.do" name="BaseModel_Name">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="50">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Branch-Name</div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Base Model Id/Name <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <td valign="top">
        <select name="t1" class="combo" onchange="getModel();" id="base">
            <option value="select">--select--</option>
             <c:forEach items="${r.rows}" var="row">
            <option value="${row.BaseModel_Id}">${row.BaseModel_Id}/ ${row.BaseModel_Name}</option>
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
    <td valign="top"><div align="center">Model Id/Name <span class="style2">*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>  </div></td>
    <td>&nbsp;</td>
            
            <td valign="top"> <div id="st"><select name="t2" class="combo">
            <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
            <option value="select">--select--</option>
                             </select></div>
    </td>
    
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">
      <input type="reset" value="Reset" class="buttonSubmit" />
    </div></td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center">
      <input type="submit" name="Submit" value="Submit"   class="buttonSubmit" />
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
</body>
</html>