<%--
    Document   : Edit_Area
    Created on : Apr 22, 2013, 2:49:33 PM
    Author     : Yukti
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>




<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Edit Area Page</title>
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
    <div style="width:648px; height: 350px; background: white;">
    <center>
        <form name="editareatype" action="editarea.do" id="edit">

            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="50">&nbsp;</td>
    <td colspan="3" valign="top" ><div align="center" class="style1">Area Details </div></td>
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
    <td valign="top"><div align="center"class="whfont">Area_ID  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1" id="t1" value="${param['P_Area_Id']}" readonly/></td>
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
    <td valign="top"><div align="center"class="whfont">Area Name <span class="style2">*</span>  </div></td>
    <td>&nbsp;</td>

    <td valign="top"><input name="t2" type="text" id="t2" value="${data1.P_Area_Name}">

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
      <input type="submit" name="Submit2" value="Update"  onclick="fun(); return false" class="buttonSubmit" />
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
              var o= new Validator("edit");
                 o.addValidation("selecttt","req","Can't left field blank");
                 o.addValidation("t2","req","Can't left field blank");
       </script>

</div>

</body>
</html>
