<%-- 
    Document   : Delete_Prospect
    Created on : Apr 19, 2013, 4:43:43 PM
    Author     : Yukti
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
        <title>Delete Prospect</title>

        <style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

<script type="text/javascript" src="JS/cal2.js"></script>
<script type="text/javascript" src="JS/cal_conf2.js"></script>
<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>
<script type="text/javascript"></script>

<script type="text/javascript" language="javascript">
    var xhro;
    function getDetail()
    {

        var v=document.getElementById("pros").value;
       xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Delete_Prospect_1.jsp?pid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("proform").innerHTML=xhro.responseText;
        }
    }
</script>

    </head>
    <body>
          
    <center>
        <div id="proform">
            <form  name="delpros"id="delprosform">

           
<table width="630" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="50">&nbsp;</td>
    <td colspan="4" valign="top" ><div align="center" class="style1">Delete Prospect</div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td width="150" valign="top">&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="150" valign="top">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center">Prospect ID<span class="style2">*</span></div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select Prospect_Id,Prospect_Fname,Prospect_Lname from prospect_master" var="rs"></s:query>
    <td valign="top"><select name="s1" class="combo" onchange="getDetail();" id="pros">
            <option value="select">--select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Prospect_Id}" >${data.Prospect_Id}/${data.Prospect_Fname} ${data.Prospect_Lname}</option>
            </c:forEach>
            </select></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <form name="copy">
<tr>
  <td height="20">&nbsp;</td>
  <td colspan="4" valign="top" > <div align="center" class="style1"> Prospect Details </div></td>
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
    <td height="375">&nbsp;</td>
    <td colspan="4" valign="top">
		<table border="1"><tr><td>
                            <table width="550" height="100%" border="0">
                                <td height="10">&nbsp;</td>

   <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">First Name</div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t1" class="txtfld" readonly />
    </td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Last Name</div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t2" class="txtfld" readonly />
    </td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <%--<td>&nbsp;</td>
    <td>&nbsp;</td--%>
  </tr>
   <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Phone</div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t3" class="txtfld" readonly />
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
    <td valign="top"><div align="center">Email</div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t4" class="txtfld" readonly  />
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
    <td valign="top"><div align="center">Model To Buy</div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t5" class="txtfld" readonly />
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
    <td valign="top"><div align="center">City</div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t6" class="txtfld" readonly />
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
    <td valign="top"><div align="center">Street Address</div></td>
    <td>&nbsp;</td>
    <td valign="top"><textarea name="textarea" name="ta1" readonly ></textarea>
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

   </table></td></tr></table></td>
  </tr>
  </form>
   <tr>
        <td>&nbsp;</td>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
       <td valign="top"><div align="center">
      <input type="submit" name="Delete" value="Delete"  onclick="fun(); return false" class="buttonSubmit" />
    </div></td>
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
  </table>
                   
        </form>
    </div>
    </center>
          <script type="text/javascript" language="javascript">
              var o= new Validator("delprosform");
                  o.addValidation("select","req","Can't left blank Prospect ID");
                   </script>
    </body>
</html>
