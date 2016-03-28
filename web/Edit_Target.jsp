<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from target_master where Target_Id=${param['Target_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<html>
<head>
<script src="gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Update Target Details</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <div style="width: 648px; height: 350px;">
    <center>
        <form name="editTarget" action="editTarget.do" method="get">

            
<table width="480" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="70" height="30">&nbsp;</td>
    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Update Target Details</div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td width="150" valign="top">&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="150" valign="top">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center"class="whfont">Target_Id</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1" class="txtfld" readonly="" value="${param['Target_Id']}" /></td>
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
  <tr>
    <td height="10">&nbsp;</td>
    <td valign="top" ><div align="center"class="whfont">Base Model_Id</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t2" class="txtfld" readonly="" value="${data.BaseModel_Id}"/></td>
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
    <td valign="top"><div align="center"class="whfont">Model_Id</div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t3" class="txtfld" readonly="" value="${data.Model_Id}"/></td>
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
    <td valign="top"><div align="center"class="whfont">No._of_product_to_sale<span class="style2">*</span></div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t4" class="txtfld"  value="${data.Number_Of_Product}"/>
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
    <td valign="top"><div align="center"class="whfont">Month_Id<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top" >
       <input type="text" name="t5" id="addcal1" class="txtfld"  value="${data.Month_Id}"/>
    </td>
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
    <td valign="top"><div align="center"class="whfont">Year<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top" ><input type="text" name="t7" id="addcal1" class="txtfld"  value="${data.Year}"/></td>
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
    <td valign="top"><div align="center"class="whfont">Target_Desc<span class="style2">*</span></div></td>
    <td >&nbsp;</td>
    <td valign="top" >
        <textarea name="t6">${data.Target_Desc}</textarea>
    </td>
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
                                    <td valign="top"><div align="right"><input type="reset" value="Reset" class="buttonSubmit" /></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><div align="left"><input type="submit" value="Update"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
                                    <td>&nbsp;</td>
                                </tr>
  <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
                    
        </form>
    </center>
<script type="text/javascript" language="javascript">
              var o= new Validator("editTarget");
              o.addValidation("t1","req","Can't left blank Branch");
              o.addValidation("t2","req","Can't left blank Team Type Name ");
              o.addValidation("t3","req","Can't left blank Name");
              o.addValidation("t4","req","Can't left Blank Manager Id");
              o.addValidation("t5","req","Can't left Blank Leader Id");
  </script></div>
</body>
</html>
</c:forEach>