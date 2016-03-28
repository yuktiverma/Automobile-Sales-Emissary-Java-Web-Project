<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>



<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>EDIT PAYMENT DETAILS</title>

<script type="text/javascript" src="JS/gen_validatorv4.js"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

<script  type="text/javascript" language="javascript">
    var xhro;
    function getPayment()
    {
        var o= document.getElementById("payment").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Editpaymentdetails_1.jsp?pid="+o+"",true);
        xhro.send();

    }
        function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("editpayment").innerHTML=xhro.responseText;
        }
    }



</script>
    </head>

<body>
    
    <center><div style="height: 350px; width: 648px">

        <div id="editpayment">

        <form name="editpayment" actio="editpayment.do">

                    <table style="border:1px solid#333" cellpadding="0" cellspacing="0" width="440">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">
                      <p>Edit Payment Details </p>
                      </div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td width="150" valign="top"><div align="center" class="whfont">Payment Map Id<span style="color: #ff0000">*</span> </div></td>
      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>
                      <sql:query dataSource="${ds}" sql="select * from payment_master" var="rs"></sql:query>
                      <select name="pmapid" class="combo" id="payment" onchange="getPayment()">
                            <option></option>
                          <core:forEach items="${rs.rows}" var="data">
                <option value="${data.Payment_Map_Id}">${data.Payment_Map_Id}</option>
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
                      <td valign="top"><div align="center" class="whfont">Finance Id </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><select name="fincid" class="combo" id="select">
                        <option>-----select------</option>
                      </select></td>
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
                      <td valign="top"> <div align="center" class="whfont">Order Id </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                      <select name="ordid" class="combo">
                          <option>-----select------</option>
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
                      <td valign="top"><div align="center">
                        <input name="Submit" type="submit" class="buttonSubmit" value="Update">
                      </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"> <div align="center">
                        <input name="Submit2" value="RESET" return false class="buttonSubmit" type="reset">
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
  </tbody>
                  </table>
        </form></div>
                      </div>
    </center>
<script type="text/javascript" language="javascript">
        var o= new Validator("editpayment");
    o.addValidation("pmapid","req","can't left blank"); </script>





</body></html>