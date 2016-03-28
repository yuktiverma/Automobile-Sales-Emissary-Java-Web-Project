<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>ADD FINANCE SOURCE PAGE</title>

<script type="text/javascript" src="JS/gen_validatorv4.js" language="javascript">

</script>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
   
    <center>
        <div style="width: 648px;height: 350px; ">


        <form name="addfinancesource" action="addfinance.do">

            <table style="border:0px solid#333;" cellpadding="0" cellspacing="0" width="430">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">
                      <p>Add Finance Source</p>
                      </div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td width="150" valign="top"><div align="center"  class="whfont">Finance Description<span style="color: #ff0000">*</span> </div></td>
      <td width="30">&nbsp;</td>
                      <td width="150" valign="top"><label>
                      <input type="text" name="findesc" class="txtfld"/>
                      </label></td>
      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"> <div align="center"  class="whfont">Source Id </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                      <sql:query dataSource="${ds}" sql="select * from source_master" var="rs"></sql:query>
                      <select name="srcid" class="combo">
                          <option></option>
                          <core:forEach items="${rs.rows}" var="data">
                            <option value="${data.Source_Id}">${data.Source_Name}</option>
                          </core:forEach>

                      </select>
                      </label></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td align="right" valign="top">
                        <input name="Submit" type="submit" class="buttonSubmit" value="ADD"/></td>
                      <td>&nbsp;</td>
                      <td valign="top"><input name="Submit2" value="RESET" class="buttonSubmit" type="reset"/></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
  </tbody>
                    </table>
        </form>
    

    <script type="text/javascript" language="javascript">
         var o= new Validator("addfinancesource");
    o.addValidation("findesc","req","can't left blank");

    </script>

        </div></center>
</body></html>