

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Inventory Report Of Sold In Branch</title>
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
    function getInv()
    {

        var v=document.getElementById("branch").value;
       
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","inventory.jsp?bid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("inventory").innerHTML=xhro.responseText;
        }
    }
</script>

<script type="text/javascript" language="javascript">
    var xhro1;
    function getdetails()
    {

        var v=document.getElementById("inv").value;
        var v1=document.getElementById("branch").value;
        xhro1=new XMLHttpRequest();
        xhro1.onreadystatechange=myfun1;
      xhro1.open("get","getinv_details.jsp?invid="+v+"&bid="+v1+"",true);
        xhro1.send();
    }
    function myfun1()
    {

        if(xhro1.readyState==4)
        {
           // document.getElementById("model").visibilty=hidden;
            document.getElementById("model").innerHTML=xhro1.responseText;
        }
    }
</script>


<script type="text/javascript" language="javascript">
    var xhro2
    function getcolor()
    {

        var v=document.getElementById("inv").value;
        var v1=document.getElementById("branch").value;
        var v2=document.getElementById("model1").value;
        xhro2=new XMLHttpRequest();
        xhro2.onreadystatechange=myfun2;
      xhro2.open("get","color.jsp?invid="+v+"&bid="+v1+"&mid="+v2+"",true);
        xhro2.send();
    }
    function myfun2()
    {

        if(xhro2.readyState==4)
        {
            document.getElementById("color").innerHTML=xhro2.responseText;
        }
    }
    function hide()
    {
        
            document.getElementById("model2").style.visibility='hidden';
        //    alert("ertyui");

    }
</script>

<script type="text/javascript" language="javascript">
    var xhro3
    function getdet()
    {

        var v=document.getElementById("inv").value;
        var v1=document.getElementById("branch").value;
        var v2=document.getElementById("model1").value;
        var v3=document.getElementById("color1").value;
        
        xhro3=new XMLHttpRequest();
        xhro3.onreadystatechange=myfun3;
      xhro3.open("get","detail.jsp?invid="+v+"&bid="+v1+"&mid="+v2+"&cid="+v3+"",true);
        xhro3.send();
    }
    function myfun3()
    {

        if(xhro3.readyState==4)
        {
            document.getElementById("textbox").innerHTML=xhro3.responseText;
        }
    }
    function hide()
    {

            document.getElementById("model2").style.visibility='hidden';
        //    alert("ertyui");

    }
</script>

<script src="gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="stylesheet.css"/>

</head>

<body onload="hide();">
    <br> <br>
    <center>
        <form name="inventoryreportofsoldofbranch">

       <table width="480" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="70" height="60">&nbsp;</td>
    <td colspan="3" valign="top" ><div align="center" class="style1">Inventory Report Of : <br> Sold In Branch  </div></td>
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
    <td valign="top" ><div align="center">Branch_Id <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <s:query dataSource="${ds}" sql="select * from branch_allocation_master" var="rs"></s:query>

    <td valign="top"><select id="branch" name="selectbranch" onchange="getInv();" class="combo">
            <option value="select">select</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Branch_Id}" >${data.Branch_Id}</option>
            </c:forEach>
            </select></td>
    <td>&nbsp;</td>
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
    <td valign="top" ><div align="center">Inventory_Id <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"> <div id="inventory"> <select name="selectivn" class="combo">
            <option value="select">select</option>
            </select></div> </td>
    <td>&nbsp;</td>
  </tr>
  
   <tr>
       <td>&nbsp;</td>
       <td  colspan="3" align="center"><div id="model">
    <table>
  <tr>
      <td height="20" width="150">&nbsp;</td>
      <td width="30">&nbsp;</td>
    <td width="150">&nbsp;</td>
  </tr>
   <tr>
    
    <td height="20" valign="top"><div align="center">Total Number Of Quantities Allocated  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1"  class="txtfld" readonly/></td>
     </tr>
   <tr>
    
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
      </tr>
 <tr>
    
    <td height="20" valign="top"><div align="center">Total Number Of Quantities Sold  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2"  class="txtfld" readonly/></td>
    
  </tr>

   <tr>
    <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
  </tr>
<tr>
    
    <td height="20" valign="top" ><div align="center">Model Id <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top">
        <select  name="selectb" class="combo">
            <option value="select">select</option>
            </select></td>
   

    </tr></table></div></td>
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
    <td valign="top" ><div align="center">Color_Id <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"><div id="color"> <select name="selectcolor" class="combo">
            <option value="select">select</option>
            </select></div></td>
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
                    
        </form>
    </center>
</body>
</html>




