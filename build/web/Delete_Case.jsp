<%-- 
    Document   : Delete_Case
    Created on : Apr 19, 2013, 4:51:05 PM
    Author     : Aanchal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
         <script type="text/javascript" language="javascript">
    var xhro;
    function getCase()
    {

        var v=document.getElementById("case").value;
        
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Delete_Case_1.jsp?did="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("caseform").innerHTML=xhro.responseText;
        }
    }
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Case</title>

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
    </head>
    <body>
          
    <center>
        <div id="caseform">
            <form name="delcase"id="delcaseform" action="deletecase.do" >

            <table border="1"><tr><td>
<table width="630" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="50">&nbsp;</td>
    <td colspan="4" valign="top" ><div align="center" class="style1">Delete Case</div></td>
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
    <td valign="top" ><div align="center">Case ID<span class="style2">*</span></div></td>
     <s:query dataSource="${ds}" sql="select Case_Id from case_detail_master" var="rs"></s:query>
    <td>&nbsp;</td>
    <td valign="top"><select onchange="getCase();" id="case" name="select" class="combo">
            <option value="select">--select--</option>
             <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Case_Id}" >${data.Case_Id}</option>
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
  <td colspan="4" valign="top" > <div align="center"class="style1"> Prospect Details </div></td>
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
                    </td></tr></table>
        </form>
        </div></center>
          <script type="text/javascript" language="javascript">
              var o= new Validator("delcaseform");
                  o.addValidation("select","req","Can't left blank Case ID");
                   </script>

    </body>

</html>
