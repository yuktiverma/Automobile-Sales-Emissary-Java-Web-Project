<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>
<sql:query dataSource="${ds}" sql="select Order_Id,Prospect_Id,Emp_Id,Finance_Source_Map_Master_Id,Model_Id,Color_Id,Inventory_Id,No_Of_Product_Ordered,Order_Date,Status_Id from order_booking_master where Order_Id='${param['oid']}'" var="rs"></sql:query>

<core:forEach items="${rs.rows}" var="data">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Delete Order</title>

<script type="text/javascript" language="javascript" src="JS/cal2.js"></script>
<script type="text/javascript" language="javascript" src="JS/cal_conf2.js"></script>
<script type="text/javascript" language="javascript" src="JS/gen_validatorv4.js"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    
    <center>
        <div id="delorder">
        <form name="deleteorder" action="deleteorder.do">

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
                    <td valign="top"><div align="center" class="whfont">OrderId <span class="style2">*</span></div></td>
                    <td>&nbsp;</td>
                    <td valign="top"><label>

                                     <select name="ordid" id="ordid" class="combo"  >
                            

                <option value="${data.Order_Id}">${data.Order_Id}</option>

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
        <input name="prosid"  class="txtfld" id="select2" value="${data.Prospect_Id}"/>

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
	  <input type="text" name="empid" class="txtfld" id="select3" value="${data.Emp_Id}"/>

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
      <td valign="top"><input type="text" name="fsmid" class="txtfld" id="select4" value="${data.Finance_Source_Map_Master_Id}"/>
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
      <td valign="top"><input type="text" name="modid" class="txtfld" id="select5" value="${data.Model_Id}"/>
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
              <input type="text" name="colid" id="select6" class="txtfld" value="${data.Color_Id}"/>
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
        <input type="text" name="invid" id="select7" class="txtfld" value="${data.Inventory_Id}"/>
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
        <input type="text" name="nopord" id="select8" class="txtfld" value="${data.No_Of_Product_Ordered}"/>

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
              <input type="text" name="date1" class="txtfld" value="${data.Order_Date}"/>
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
              <input type="text" name="status" id="select10" class="txtfld" value="${data.Status_ID}"/>
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
</core:forEach>