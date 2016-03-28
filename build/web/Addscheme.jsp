<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>


<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>ADD SCHEME PAGE</title>
<script type="text/javascript" src="JS/cal2.js" language="javascript"></script>
<script type="text/javascript" src="JS/cal_conf2.js" language="javascript"></script>

<script type="text/javascript" src="JS//gen_validatorv4.js" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>



</head>

<body>
    
    <center>
        <form name="addscheme" action="addscheme.do">

            <table style="border:0px solid #333;"  cellpadding="0" cellspacing="0" width="440">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">ADD SCHEME</div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td width="150" valign="top"><div align="center">Scheme For<span style="color: #ff0000">*</span> </div></td>
      <td width="40">&nbsp;</td>



           <sql:query dataSource="${ds}" sql="select * from industry_master" var="rs"></sql:query>
          <td width="150" valign="top"><label>


           <select name="schmfor" class="combo">
            <option></option>
            <core:forEach items="${rs.rows}" var="data">
                <option value="${data.Industry_Id}" >${data.Industry_Name}</option>
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
                      <td valign="top"> <div align="center">Discount Percent<span style="color: #ff0000">*</span> </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                        <input type="text" name="discper" class="txtfld">
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
                      <td valign="top"><div align="center">Source Id<span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>

             <sql:query dataSource="${ds}" sql="select * from source_master" var="rs"></sql:query>
                <td valign="top"><label>
        <select name="srcid" class="combo">
            <option></option>
            <core:forEach items="${rs.rows}" var="data">
           <option value="${data.Source_Id}" >${data.Source_Name}</option>
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
                      <td valign="top"><div align="center">Model Id<span style="color: #ff0000">*</span> </div></td>
      <td>&nbsp;</td>
                      
                
                    <sql:query dataSource="${ds}" sql="select * from model_master" var="rs"></sql:query>      
                    <td valign="top">
                        <select name="modid" class="combo">
                            <option></option>
                          <core:forEach items="${rs.rows}" var="data">

                          <option value="${data.Model_Id}" >${data.Model_Name}</option>
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
                      <td valign="top"><div align="center">Color Id<span style="color: #ff0000">*</span> </div></td>
      <td></td>
                      <td valign="top"><label>
             <sql:query dataSource="${ds}" sql="select * from color_master" var="rs"></sql:query>
             <select name="colid" class="combo">
                 <option></option>
                 <core:forEach items="${rs.rows}" var="data">
                          <option value="${data.Color_Id}" >${data.Color_Name}</option>
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
                      <td valign="top"><div align="center">From Date<span style="color: #ff0000">*</span> </div></td>
      <td></td>
                      <td valign="top"><input type="text" name="fdate" class="txtfld">
                          <a href="javascript:showCal('calender2')"><img src="Images/calender.jpg"></a></td>
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
                      <td valign="top"><div align="center">To Date<span style="color: #ff0000">*</span> </div></td>
                      <td></td>
                      <td valign="top"><label><a href="javascript:showCal('calender2')"></a>
                          <input type="text" name="tdate" class="txtfld" >
                          <a href="javascript:showCal('calender3')"><img src="Images/calender.jpg"></a></label></td>
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
                      <td valign="top"><div align="center">
                        <input name="Submit" type="submit" class="buttonSubmit" value="ADD">
                      </div></td>
                      <td></td>
                      <td valign="top"><label><a href="javascript:showCal('calender3')"></a>
                          <input name="Submit2" value="RESET"  class="buttonSubmit" type="reset">
                      </label></td>
                      <td></td>
                    </tr>

                          <tr>
                      <td height="38"></td>
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
        var o= new Validator("addscheme");
    o.addValidation("schmfor","req","can't left blank");    
    o.addValidation("discper","req","can't left blank");
    o.addValidation("srcid","req","can't left blank");
    o.addValidation("modid","req","can't left blank");
    o.addValidation("colid","req","can't left blank");
    o.addValidation("fdate","req","can't left blank");
    o.addValidation("tdate","req","can't left blank");


    </script>



</body></html>