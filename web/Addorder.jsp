<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" user="root"  password="password" url="jdbc:mysql://localhost:3306/ase" var="ds"></sql:setDataSource>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; "/>
<title>Add Branch Page</title>

<script type="text/javascript" src="JS/cal2.js">

        </script>
<script type="text/javascript" src="JS/cal_conf2.js">

        </script>

<script type="text/javascript" src="JS/gen_validatorv4.js" language="javascript">
    
</script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>
<script  type="text/javascript" language="javascript">
    var xhro;
    function getPros()
    {
        var o= document.getElementById("pros1").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Addorder_1.jsp?pid="+o+"",true);
        xhro.send();

    }
        function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("addorder").innerHTML=xhro.responseText;
        }
    }



</script>
</head>

<body>
    
    <center>
        <div id="addorder">
        <form name="addorder">




                <table width="440"  style="border:0px solid #333;" cellpadding="0" cellspacing="0">
                  <!--DWLayoutTable-->
                  <tr>
                    <td width="50" height="40">&nbsp;</td>
      <td colspan="3" valign="top" ><div align="center" class="style1">ADD ORDER  DETAILS </div></td>
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
                    <td valign="top"><div align="center" class="whfont">Prospect Id <span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
             
       <sql:query dataSource="${ds}" sql="select Prospect_Id from prospect_master" var="rs"></sql:query>
       <select onchange="getPros();" id="pros1" name="prosid"  class="combo">

            <option> </option>
            
           <core:forEach items="${rs.rows}" var="data">
                <option value="${data.Prospect_Id}">${data.Prospect_Id}</option>
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
      <td valign="top"><div align="center" class="whfont">Employee Id <span style="color: #ff0000">*</span>  </div></td>
      <td>&nbsp;</td>
      <td valign="top">

             <sql:query dataSource="${ds}" sql="select * from employee_master" var="rs"></sql:query>
             <select name="empid" class="combo" id="select2">
                <option> </option>
              <core:forEach items="${rs.rows}" var="data" >
             <option value="${data.Emp_Id}" >${data.Emp_Fname}</option>
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
      <td valign="top"><div align="center" class="whfont">Finance Src Map Id <span style="color: #ff0000">*</span></div></td>
      <td>&nbsp;</td>
      <td valign="top">
             <sql:query dataSource="${ds}" sql="select * from finance_source_map_master" var="rs"></sql:query>
             <select name="fsmid" class="combo" id="select3">
                <option> </option>
                <core:forEach items="${rs.rows}" var="data" >
             <option value="${data.Finance_Source_Map_Master_Id}" >${data.Finance_Source_Map_Master_Id}</option>
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
      <td valign="top"><div align="center" class="whfont">Model Id<span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>
      <td valign="top">

          <sql:query dataSource="${ds}" sql="select * from model_master" var="rs"></sql:query>
          <select name="modid" class="combo" id="select4">
                <option> </option>
                <core:forEach items="${rs.rows}" var="data" >
             <option value="${data.Model_Id}" >${data.Model_Name}</option>
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
      <td valign="top"><div align="center" class="whfont">Color Id<span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
               <sql:query dataSource="${ds}" sql="select * from color_master" var="rs"></sql:query>
              <select name="colid" id="select5" class="combo">
          <option></option>
                <core:forEach items="${rs.rows}" var="data" >
             <option value="${data.Color_Id}" >${data.Color_Name}</option>
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
      <td valign="top"><div align="center" class="whfont">Inventory Id <span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
             <sql:query dataSource="${ds}" sql="select * from inventory_master" var="rs"></sql:query>
           <select name="invid" id="select6" class="combo">
          <option></option>
              <core:forEach items="${rs.rows}" var="data" >
             <option value="${data.Inventory_Id}" >${data.Inventory_Status}</option>
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
      <td valign="top"><div align="center" class="whfont">No Of Products Ordered<span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
        <input type="text" name="nopord" class="txtfld" />
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
      <td valign="top"><div align="center" class="whfont">Order Date<span style="color: #ff0000">*</span></div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>
              <input type="text" name="date" class="txtfld" />
              &nbsp;<a href="javascript:showCal('calender')"><img src="Images/calendar.jpg"/></a>
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
      <td valign="top"><div align="center" class="whfont">Status <span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>
      <td valign="top"><label>

          <sql:query dataSource="${ds}" sql="select * from status_master" var="rs"></sql:query>
          <select name="status">
     <option></option>
          <core:forEach items="${rs.rows}" var="data" >
         <option value="${data.Status_Id}" >${data.Status_Desc}</option>
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
              <input name="Submit" type="submit" class="buttonSubmit"  value="ADD" />
    </div></td>
      <td>&nbsp;</td>
      <td valign="top"><input name="Reset" type="reset" class="buttonSubmit"  value="Reset"/></td>
      <td>&nbsp;</td>
    </tr>
                  <tr>
                    <td height="20"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </table>
            <script type="text/javascript" language="javascript">
                var o= new Validator("addorder");
                o.addValidation("prosid","req","can't left blank");
                o.addValidation("empid","req","can't left blank");
                o.addValidation("fsmid","req","can't left blank");
                o.addValidation("modid","req","can't left blank");
                o.addValidation("colid","req","can't left blank");
                o.addValidation("invid","req","can't left blank");
               
                o.addValidation("date","req","can't left blank");
                o.addValidation("status","req","can't left blank");
            </script>

        </form>
          </div>
    </center>
</body>
</html>
