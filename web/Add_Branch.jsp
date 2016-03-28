<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<html>
<head>
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





<meta http-equiv="Content-Type" content="text/html; "/>
<title>Add Branch Page</title>
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style>

<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>

    <div style="width: 648px ; height:500px; background: white;">
    <center>
        <form name="addbranch" action="addbranch.do" method="post">

           
<table width="480" border="0" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top"><div align="center" class="style1"> Enter The Branch Details </div></td>
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
    <td valign="top"><div align="center">Organization_Name <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from organization_master" var="rs"></s:query>

    <td valign="top">
   <select name="selecto"  class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Org_Id}" >${data.Org_Name}</option>
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
    <td valign="top"><div align="center">Branch Name <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1"  class="txtfld"/></td>
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
    <td valign="top"><div align="center">Country <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
     <s:query dataSource="${ds}" sql="select * from country_name_master" var="rs"></s:query>

    <td valign="top">
   <select name="selectc" onchange="getState();" id="con" class="combo">
             <option value="select">--Select--</option>
            <c:forEach items="${rs.rows}" var="data">
                <option value="${data.Country_Name}" >${data.Country_Name}</option>
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
    <td valign="top"><div align="center">State <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><div id="st" >

            <select name="selects" class="combo" >
            <option value="">--select--</option>

    </select>
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
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">City <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><div id="city">
        <select name="selectct" class="combo">
            <option value="select">--select--</option>
    </select>
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
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center">Street Number </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2" class="txtfld" /></td>
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
    <td valign="top"><div align="center">Zip Code </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t3" class="txtfld" /></td>
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
    <td valign="top"><div align="center">Phone 1 <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t4"  class="txtfld"/></td>
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
    <td valign="top"><div align="center">Phone 2 </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t5" class="txtfld" /></td>
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
    <td valign="top"><div align="center">Fax </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t7"  class="txtfld"/></td>
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
    <td valign="top"><div align="center">Status <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>
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
    <td valign="top"> <div align="center"><input type="reset"  value="Reset" class="buttonSubmit" />
      <input type="submit" value="Submit"  onclick="fun(); return false" class="buttonSubmit" />
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
<script type="text/javascript" language="javascript">
              var o= new Validator("addbranch");
                 o.addValidation("selectc","req","Can't left blank Country");
                  o.addValidation("t1","req","Can't left blank Branch Name ");
                  o.addValidation("t4","req","Can't left blank Phone Number");
                  o.addValidation("t4","numeric","Phone Number enter in numeric format");
                  o.addValidation("t5","numeric","Phone Number enter in numeric format");
                  o.addValidation("selectct","req","Can't left Blank City");
                  o.addValidation("selects","req","Can't left Blank State");
                  o.addValidation("selectst","req","Can't left blank Status");
  </script>
    </div>
</body>
</html>
