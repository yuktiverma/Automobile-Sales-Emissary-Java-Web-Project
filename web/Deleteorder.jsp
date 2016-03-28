<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Delete Order</title>

<script type="text/javascript" language="javascript" src="JS/cal2.js"></script>
<script type="text/javascript" language="javascript" src="JS/cal_conf2.js"></script>
<script type="text/javascript" language="javascript" src="JS/gen_validatorv4.js"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

<script  type="text/javascript" language="javascript">
    var xhro;
    function getOrder()
    {
        var o= document.getElementById("ordid").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Deleteorder_1.jsp?oid="+o+"",true);
        xhro.send();

    }
        function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("delorder").innerHTML=xhro.responseText;
        }
    }



</script>


</head>

<body>
    
    <center>
        <div id="delorder">
        <form name="deleteorder" action="deleterorder.do">

                <table width="440" style="border:0px solid#333" cellpadding="0" cellspacing="0">
                  <!--DWLayoutTable-->
                  <tr>
                    <td width="50" height="40">&nbsp;</td>
      <td colspan="3" valign="top" ><div align="center" class="style1">DELETE ORDER</div></td>
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
                    <td valign="top"><div align="center" class="whfont">Order Id <span class="style2">*</span></div></td>
                    <td>&nbsp;</td>
                    <td valign="top"><label>
                                     <sql:query dataSource="${ds}" sql="select * from order_booking_master" var="rs"></sql:query>
                                     <select name="ordid" id="ordid" class="combo"  onchange ="getOrder()">
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
      <td valign="top"><label>
        <input name="prosid"  class="txtfld" id="select2"/>

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
      <td valign="top"><div align="center" class="whfont">Employee Id</div></td>
      <td>&nbsp;</td>
      <td valign="top">
	  <input type="text" name="empid" class="txtfld" id="select3"/>

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
      <td valign="top"><div align="center" class="whfont">Finance Src Map Id</div></td>
      <td>&nbsp;</td>
      <td valign="top"><input type="text" name="fsmid" class="txtfld" id="select4"/>
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
      <td valign="top"><div align="center" class="whfont">Model Id</div></td>
      <td>&nbsp;</td>
      <td valign="top"><input type="text" name="modid" class="txtfld" id="select5"/>
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
      <td valign="top"><div align="center" class="whfont">Color Id </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
        <input type="text" name="colid" id="select6" class="txtfld"/>
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
        <input type="text" name="invid" id="select7" class="txtfld"/>
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
        <input type="text" name="nopord" id="select8" class="txtfld"/>

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
      <a href="javascript:showCal('calender1')"></a>
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
              <input type="text" name="status" id="select10" class="txtfld"/>
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
              <input name="Submit" type="submit"  class="buttonSubmit" value="DELETE" />
    </div></td>
      <td>&nbsp;</td>
      <td valign="top"><div align="center">
        
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
</div>
    </center>
     <script type="text/javascript" language="javascript">
                var o= new Validator("deleteorder");
                o.addValidation("ordid","req","can't left blank")

      </script>




</body>
</html>
