<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>

<sql:query dataSource="${ds}" sql="select Scheme_Id,Scheme_For,Discount_Percent,Source_Id,Color_Id,Model_ID,Scheme_From,Scheme_To from scheme_master where  Scheme_Id='${param['sid']}'" var="rs"></sql:query>

<core:forEach items="${rs.rows}" var="data">




<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>EDIT SCHEME PAGE</title>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>


<link rel="stylesheet" href="CSS/stylesheet.css"/>
<script type="text/javascript" src="JS/cal2.js"></script>
<script type="text/javascript" src="JS/cal_conf2.js"></script>
<script type="text/javascript" src="JS/gen_validatorv4.js"></script>
 </head>

<body>
    
    <center>
        <form name="editscheme" action="editscheme.do">

                <table  style="border:0px solid#333" cellpadding="0" cellspacing="0" width="440">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="36">&nbsp;</td>
                    <td colspan="3" valign="top"><div class="style1" align="center">EDIT SCHEME</div></td>
      <td width="50">&nbsp;</td>
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
                      <td width="150" valign="top"><div align="center">Scheme Id <span class="style2">*</span></div></td>
                      <td width="40">&nbsp;</td>
                      <td  width="150"valign="top"><label>
                        <select name="schmid" class="combo">

                     <option value="${data.Scheme_Id}">${data.Scheme_Id}</option>

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
                      <td width="150" valign="top"><div align="center">Scheme For </div></td>
      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>


           <select name="schmfor" class="combo">
            <sql:query dataSource="${ds}" sql="select * from industry_master where Industry_Id='${data.Scheme_For}' " var="rs1"></sql:query>
               <core:forEach items="${rs1.rows}" var="data1">
                <option value="${data.Scheme_For}" >${data1.Industry_Name}</option>
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
                      <td valign="top"> <div align="center">Discount Percent </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>

                              <input type="text" name="discper" class="txtfld" value="${data.Discount_Percent}">
                      </label></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="19">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"><div align="center">Source Id </div></td>
      <td>&nbsp;</td>
                      <td valign="top"><label>
                       <sql:query dataSource="${ds}" sql="select * from source_master where Source_Id='${data.Source_Id}' " var="rs1"></sql:query>
           <select name="srcid" class="combo">
               <core:forEach items="${rs1.rows}" var="data1">
                <option value="${data.Source_Id}" >${data1.Source_Name}</option>
            </core:forEach>

          </select>
                      </label>    </td>
      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="21">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td valign="top"><div align="center">Model Id </div></td>
      <td>&nbsp;</td>
                      <td valign="top">
                          <sql:query dataSource="${ds}" sql="select * from model_master where Model_Id='${data.Model_Id}' " var="rs1"></sql:query>
                          <select name="modid" class="combo">
                   <core:forEach items="${rs1.rows}" var="data1">
                    <option value="${data.Model_Id}" >${data1.Model_Name}</option>
                  </core:forEach>
                     </select>    </td>
      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="25">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22"></td>
                      <td valign="top"><div align="center">Color Id </div></td>
      <td></td>
                      <td valign="top"><label>
                <sql:query dataSource="${ds}" sql="select * from color_master where Color_Id='${data.Color_Id}' " var="rs1"></sql:query>
         <select name="colid" class="combo">
                   <core:forEach items="${rs1.rows}" var="data1">
                    <option value="${data.Color_Id}" >${data1.Color_Name}</option>
                  </core:forEach>

        </select>
                      </label></td>
      <td></td>
                    </tr>
                    <tr>
                      <td height="21"></td>
                      <td>&nbsp;</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                                       <tr>
                      <td height="20"></td>
                      <td valign="top"><div align="center">From Date  </div></td>
                      <td></td>
                      <td valign="top"><label>
                              <input type="text" name="fdate" class="txtfld" value="${data.Scheme_From}">
                        <a href="javascript:showCal('calender4')">
                            <img src="Images/calender.jpg">
                         </a>
                      </label></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td>&nbsp;</td>
                      <td></td>
                      <td>&nbsp;</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td valign="top"><div align="center">To Date  </div></td>
                      <td></td>
                      <td valign="top"><label>
                        <input type="text" name="tdate" class="txtfld" value="${data.Scheme_To}">
                       <a href="javascript:showCal('calender5')">
                           <img src="Images/calender.jpg">
                         </a>
                       </label></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td valign="top"></td>
                      <td></td>
                      <td>&nbsp;</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td valign="top"><div align="center"> <input name="Submit" type="submit" class="buttonSubmit" value="Update">
                      </div></td>
                      <td></td>
                      <td valign="top"><input name="Submit2" value="RESET" return false" class="buttonSubmit" type="reset"></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td>&nbsp;</td>
                      <td></td>
                      <td>&nbsp;</td>
                      <td></td>
                    </tr>
  </tbody>
                  </table>
        </form>
    </center>

<script type="text/javascript" language="javascript">
        var o= new Validator("editscheme");
    o.addValidation("schmid","req","can't left blank"); </script>




</body></html>
</core:forEach>