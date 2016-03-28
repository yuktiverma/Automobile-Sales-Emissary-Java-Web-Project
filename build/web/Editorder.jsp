<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Edit Order Page</title>

<script type="text/javascript" language="javascript" src="JS/cal2.js"></script>
<script type="text/javascript" language="javascript" src="JS/cal_conf2.js"></script>
<script type="text/javascript" language="javascript" src="JS/gen_validatorv4.js"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

<script  type="text/javascript" language="javascript">
    var xhro;
    function getOrder()
    {
        var o= document.getElementById("order").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Editorder_1.jsp?oid="+o+"",true);
        xhro.send();       
        
    }
        function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("editorder1").innerHTML=xhro.responseText;
        }
    }

    
    
</script>


</head>

<body>
    
    <center>
        <div id="editorder1">
            <form name="editorder" action="editorder.do" >

                <table width="440" style="border:0px solid#333" cellpadding="0" cellspacing="0">
                  <!--DWLayoutTable-->
                  <tr>
                    <td width="50" height="40">&nbsp;</td>
      <td colspan="3" valign="top"><div align="center" class="style1">EDIT ORDER  DETAILS </div></td>
      <td width="50">&nbsp;</td>
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
                    <td width="150" valign="top"><div align="center" class="whfont">OrderId <span style="color: #ff0000">*</span></div></td>
                    <td width="30">&nbsp;</td>

                    <td width="150" valign="top"><label>
             <sql:query dataSource="${ds}" sql="select * from order_booking_master" var="rs"></sql:query>
                      <select name="ordid" id="order" onchange="getOrder();" class="combo">
                     <option></option>
                     <core:forEach items="${rs.rows}" var="data">
                <option value="${data.Order_Id}">${data.Order_Id}</option>
            </core:forEach>


                      </select>
                    </label></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="20">&nbsp;</td>
                    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                    <td>&nbsp;</td>
                    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="20">&nbsp;</td>
      <td valign="top"><div align="center" class="whfont">Prospect Id</div></td>
      <td>&nbsp;</td>
      <td valign="top">
          <input type="text" name="prosid" class="txtfld" value="${data.Prospect_Id}" readonly/>
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
      <td valign="top"><div align="center" class="whfont">Employee Id</div></td>
      <td>&nbsp;</td>
      <td valign="top">
          
          <select name="empid" class="combo" id="select3">
                <option></option>
              
        </select>    </td>
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
      <td valign="top"><div align="center" class="whfont">Finance Src Map Id</div></td>
      <td>&nbsp;</td>
      <td valign="top">

          <select name="fsmid" class="combo" id="select4">
            <option></option>
        </select>    </td>
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
      <td valign="top"><div align="center" class="whfont">Model Id</div></td>
      <td>&nbsp;</td>
      <td valign="top">


          <select name="modid" class="combo" id="select5">
         <option></option>
             <option value="${data.Model_Id}" >${data.Model_Name}</option>

        </select>    </td>
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
      <td valign="top"><div align="center" class="whfont">Color Id </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>

          <select name="colid" id="select6" class="combo">
          <option></option>



          </select>
        </label></td>
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

      <td valign="top"><div align="center" class="whfont">Inventory Id</div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>

              <select name="invid" id="select7" class="combo">
              <option></option>
          </select>
        </label></td>
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
      <td valign="top"><div align="center" class="whfont">No Of Products Ordered </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
        <select name="nopord" id="select8" class="combo">
         <option></option>

          </select>
        </label></td>
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
      <td valign="top"><div align="center" class="whfont">Order Date </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
              <input type="text" name="date1" class="txtfld"/>
              <a href="javascript:showCal('calender1')"><img src="Images/calender.jpg"/></a>
      </label></td>
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
      <td valign="top"><div align="center" class="whfont">Status</div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>


          <select name="status" id="select10" class="combo">
          <option></option>
          </select>
        </label></td>
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
      <td valign="top"><div align="center">
              <input name="Submit" type="submit"  class="buttonSubmit" value="UPDATE"/>
    </div></td>
      <td>&nbsp;</td>
      <td valign="top"><div align="center">
        <input name="Reset" type="reset" class="buttonSubmit"  value="Reset"  />
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
        </form></div>
    </center>
    <script type="text/javascript" language="javascript">
                var o= new Validator("editorder");
                o.addValidation("ordid","req","can't left blank")

      </script>

</body>
</html>
