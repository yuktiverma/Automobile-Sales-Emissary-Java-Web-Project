<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>


<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>ADD PAYMENT DETAILS</title>

<script type="text/javascript" src="JS/gen_validatorv4.js"></script>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    
    <center><div style="height: 350px; width: 648px">
        <form name="addpayment" action="addpayment.do">

                    <table style="border:0px solid#333" cellpadding="0" cellspacing="0" width="430">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">
                      <p>Add Payment Details </p>
                      </div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td width="150" valign="top"><div align="center" class="whfont">Finance Id<span class="style2">*</span>  </div></td>
      <td width="30">&nbsp;</td>
                      <td width="150" valign="top"><label>

                   <sql:query dataSource="${ds}" sql="select * from finance_master" var="rs"></sql:query>
                     <select name="fincid" class="combo" id="select1">

                     <option></option>
                    <core:forEach items="${rs.rows}" var="data">
                    <option value="${data.Finance_Id}" >${data.Finance_Description}</option>
                     </core:forEach>
                      </select>
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
                      <td valign="top"> <div align="center" class="whfont">Order Id <span class="style2">*</span></div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>

                       <sql:query dataSource="${ds}" sql="select * from order_booking_master" var="rs"></sql:query>
                      <select name="ordid" class="combo">
                          <option></option>
                          <core:forEach items="${rs.rows}" var="data" >
                          <option value="${data.Order_Id}" >${data.Order_Id}</option>
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
                      <td align="right" valign="top"><input name="Submit" type="submit" class="buttonSubmit" value="ADD"/></td>
                      <td>&nbsp;</td>
                      <td valign="top"><input name="Submit2" value="RESET" return false class="buttonSubmit" type="reset"/></td>
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
                      </div>
    </center>
<script type="text/javascript" language="javascript">
        var o= new Validator("addpayment");
    o.addValidation("fincid","req","can't left blank");
    o.addValidation("ordid","req","can't left blank");

</script>





</body></html>