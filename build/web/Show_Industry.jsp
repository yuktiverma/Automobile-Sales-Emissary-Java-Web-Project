<%--
    Document   : Edit_Area
    Created on : Apr 22, 2013, 2:49:33 PM
    Author     : Disha
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from industry_master" var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Show Industry</title>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
-->
</style>
 <script type="text/javascript" language="javascript">
    var xhro;
    function getIndustry()
    {

        var v=document.getElementById("base").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","ind.jsp?iname="+v+"",true);
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
    var xhro;
    function getId()
    {

        var v=document.getElementById("base").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","indus.jsp?iid="+v+"",true);
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

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body><br><br><center>

    <form name="showindustry">
        <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="70" height="50">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">
      Industry Details
    </div></td>
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
    <td valign="top"><div align="center">Industry Name </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from industry_master" var="rs"></s:query>

    <td valign="top">
   <select name="selecto"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Industry_Name}" >${data.Industry_Name}</option>
            </c:forEach>
    </select>
    </td>
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
    <td valign="top"><div align="center">Id </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from industry_master " var="rs"></s:query>

    <td valign="top">
   <select name="selectw"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Industry_Id}" >${data.Industry_Id}</option>
            </c:forEach>
    </select>
    </td>
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
    <td valign="top"><div align="center">Description </div></td>
    <td>&nbsp;</td>  <s:query dataSource="${ds}" sql="select Industry_Desc from industry_master where Industry_Id='selectw'" var="rs"></s:query>

    <td valign="top"><input type="text" name="t1" readonly class="txtfld" value="${data.Industry_Desc}" /></td>
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
    <td valign="top"><div align="center">
      <input type="submit" name="Submit" value="Back"  class="buttonSubmit" />
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
