<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>

<sql:query dataSource="${ds}" sql="select Order_Id,Prospect_Id,Emp_Id,Finance_Source_Map_Master_Id,Model_Id,Color_Id,Inventory_Id,No_Of_Product_Ordered,Order_Date,Status_Id from order_booking_master where Order_Id='${param['oid']}'" var="rs"></sql:query>

<core:forEach items="${rs.rows}" var="data">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Edit Order Page</title>

<script type="text/javascript" language="javascript" src="JS/cal2.js"></script>
<script type="text/javascript" language="javascript" src="JS/cal_conf2.js"></script>
<script type="text/javascript" language="javascript" src="JS/gen_validatorv4.js"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    
    <center>
        <form name="editorder" action="editorder.do">

                <table width="440" style="border:0px solid#333" cellpadding="0" cellspacing="0">
                  <!--DWLayoutTable-->
                  <tr>
                    <td width="50" height="40">&nbsp;</td>
      <td colspan="3" valign="top"><div align="center" class="style1">EDIT ORDER DETAILS </div></td>
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
                    <td valign="top"><div align="center" class="whfont">OrderId <span style="color: #ff0000">*</span></div></td>
                    <td>&nbsp;</td>
                    <td valign="top"><label>
                     <sql:query dataSource="${ds}" sql="select Order_Id from order_booking_master where Order_Id='${data.Order_Id}'" var="rs2"></sql:query>
                     <select name="ordid"  class="combo">
         
                     <core:forEach items="${rs2.rows}" var="data2">
                     <option value="${data.Order_Id}">${data2.Order_Id}</option>
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
           <input type="text" name="prosid" class="txtfld"  value="${data.Prospect_Id}" readonly/>
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
          



          <sql:query dataSource="${ds}" sql="select Emp_Fname from employee_master where Emp_Id='${data.Emp_Id}'" var="rs2"></sql:query>
          <select name="empid" class="combo" id="select3">
              
              <core:forEach items="${rs2.rows}" var="data2">
              <option value="${data.Emp_Id}">${data2.Emp_Fname}</option>
              </core:forEach>
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
      <td valign="top"><select name="fsmid" class="combo" id="select4">
        <option value="${data.Finance_Source_Map_Master_Id}" >${data.Finance_Source_Map_Master_Id}</option>
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
          <sql:query dataSource="${ds}" sql="select * from model_master" var="rs3"></sql:query>
          <select name="modid" class="combo" id="select5">
            <core:forEach items="${rs3.rows}" var="data3">
              <option value="${data3.Model_Id}">${data3.Model_Name}</option>
              </core:forEach>
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
            <sql:query dataSource="${ds}" sql="select * from  color_master where Color_Id='${data.Color_Id}'" var="rs5"></sql:query>
            <select name="colid" id="select6" class="combo">
                <core:forEach items="${rs5.rows}" var="data5">
              <option value="${data5.Color_Id}" >${data5.Color_Name}</option>
              </core:forEach>


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
        <sql:query dataSource="${ds}" sql="select * from inventory_master where Inventory_Id='${data.Inventory_Id}'" var="rs6"></sql:query>
         <select name="invid" id="select7" class="combo">
          
                 <core:forEach items="${rs6.rows}" var="data6">
             <option value="${data.Inventory_Id}" >${data6.Inventory_Status}</option>
              </core:forEach>

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
          <option value="${data.Order_Id}" >${data.No_Of_Product_Ordered}</option>
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
              <input type="text" name="date1" class="txtfld" value="${data.Order_Date}"/>
              <a href="javascript:showCal('calender1')"><img   src="Images/calender.jpg"/></a>
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
              <sql:query dataSource="${ds}" sql="select * from status_master where Status_Id='${data.Status_Id}'" var="rs7"></sql:query>
              <select name="status" id="select10" class="combo">
                  <core:forEach items="${rs7.rows}" var="data7">
              <option value="${data.Status_Id}" >${data7.Status_Desc}</option>
              </core:forEach>

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
                    <td height=20">&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
   </table>
        </form>
    </center>
    <script type="text/javascript" language="javascript">
                var o= new Validator("editorder");
                o.addValidation("ordid","req","can't left blank")

      </script>

</body>
</html>
</core:forEach>