


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Inventory Report Of Stock Overall</title>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>

<script type="text/javascript" language="javascript">
    var xhro;
    function getColor()
    {

        var v=document.getElementById("model").value;
        alert(v);
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
      xhro.open("get","getcolor.jsp?mid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("color").innerHTML=xhro.responseText;
        }
    }
</script>

<script type="text/javascript" language="javascript">
    var xhro3
    function getdet()
    {

        var v2=document.getElementById("model").value;
        var v3=document.getElementById("color1").value;

        xhro3=new XMLHttpRequest();
        xhro3.onreadystatechange=myfun3;
      xhro3.open("get","detail_3.jsp?&mid="+v2+"&cid="+v3+"",true);
        xhro3.send();
    }
    function myfun3()
    {

        if(xhro3.readyState==4)
        {
            document.getElementById("textbox").innerHTML=xhro3.responseText;
        }
    }

</script>


<script src="gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="stylesheet.css"/>

</head>

<body>
    <br> <br>
    <center>
        <form name="inventoryreportofstockoverall">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="70" height="70">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Inventory Report : <br>  Of Stock  </div></td>
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
    <td valign="top"><div align="center">Number of Branches  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1"  class="txtfld" value="${param['c1']}" readonly/></td>
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
    <td valign="top"><div align="center">Total Number Of Quantities Allocated  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t3"  class="txtfld" value="${param['c2']}" readonly/></td>
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
    <td valign="top"><div align="center">Total Number Of Quantities Sold  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t4"  class="txtfld" value="${param['c3']}"readonly/></td>
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
    <td valign="top"><div align="center">Total Number Of Quantities In Hand  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t5"  class="txtfld" value="${param['c4']}"readonly/></td>
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
    <td valign="top" ><div align="center">Model_Id <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from branch_allocation_master" var="rs"></s:query>
    <td valign="top"><select id="model" name="selectb" onchange="getColor();" class="combo">
            <option value="select">select</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Model_Id}" >${data.Model_Id}</option>
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
<tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center"> Color_Id <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"><div id="color"> <select name="selectcolor" class="combo">
            <option value="select">select</option>
            </select></div></td>
    <td>&nbsp;</td>
 <tr>
       <td>&nbsp;</td>
       <td  colspan="3" align="center"><div id="textbox">
    <table border="0">
  <tr>
      <td height="20" width="150">&nbsp;</td>
      <td width="30">&nbsp;</td>
    <td width="150">&nbsp;</td>
  </tr>
   <tr>

    <td height="20" valign="top"><div align="center">Total Model Of Quantities Allocated  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1"  class="txtfld" readonly/></td>
     </tr>
   <tr>

    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
      </tr>
 <tr>

    <td height="20" valign="top"><div align="center">Total Model Of Quantities Sold  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2"  class="txtfld" readonly/></td>

  </tr>

     <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<tr>

    <td height="20" valign="top"><div align="center">Total Model Of Quantities In Hand  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2"  class="txtfld" readonly/></td>

  </tr>

     <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
       <td height="20" valign="top"><div align="center">Cost  of Sold   </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t5"  class="txtfld" readonly/></td>
     </tr>



</table></div></td>
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
    <td valign="top"></td>
    <td>&nbsp;</td>
    <td><div align="center">
            <input type="submit"  value="Print" class="buttonSubmit" />
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




