<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>
<sql:query dataSource="${ds}" sql="select * from finance_master where Finance_Id='${param['sid']}'" var="rs"></sql:query>

<core:forEach items="${rs.rows}" var="data">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>SHOW FINANCE SOURCE PAGE</title>

<script type="text/javascript" src="JS/gen_validatorv4.js" language="javascript">

</script>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    
    <center><div style="height: 350px; width: 648px">
        <form name="addfinancesource" action="addfinance.do">

            <table style="border:1px solid#333;" cellpadding="0" cellspacing="0" width="480">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="70" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">
                      <p>Show Finance Source</p>
                      </div></td>
      <td width="66">&nbsp;</td>
    </tr>

                  <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"> <div align="center"  class="whfont">Finance Id </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                               <select name="fincid" class="combo" id="src1" >
                               <option>${data.Finance_Id}</option>
                <option value="${data.Finance_Id}">${data.Finance_Id}</option>
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
                      <td width="150" valign="top"><div align="center"  class="whfont">Finance Description</div></td>
      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>
                              <input type="text" name="findesc" class="txtfld" value="${data.Finance_Description}"/>
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
                              <input type="text" name="srcid" class="txtfld" value="${data.Source_Id}"/>
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
                      </tbody>
                    </table>

        </form></div>
    </center>

    <script type="text/javascript" language="javascript">
         var o= new Validator("addfinancesource");
    o.addValidation("findesc","req","can't left blank");

    </script>



</body></html>
</core:forEach>