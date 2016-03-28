<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>
<sql:query dataSource="${ds}" sql="select Scheme_Id,Scheme_For,Discount_Percent,Source_Id,Color_Id,Model_ID,Scheme_From,Scheme_To from scheme_master where  Scheme_Id='${param['sid']}'" var="rs"></sql:query>

<core:forEach items="${rs.rows}" var="data">


<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>DELETE SCHEME PAGE</title>
<script type="text/javascript" src="JS/cal2.js"></script>
<script type="text/javascript" src="JS/cal_conf2.js"></script>
<script type="text/javascript" src="JS/gen_validatorv4.js"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    
    <center>
        <form name="deletescheme" action="deletescheme.do">

            <table style="border:0px solid #333;"  cellpadding="0" cellspacing="0" width="440">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">DELETE SCHEME</div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"><div align="center">Scheme Id <span style="color: #ff0000">*</span> </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                        <select name="schmid" class="combo" id="schmid">
                            <option>${data.Scheme_Id}</option>
                            
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
                              <input type="text" name="schmfor" class="txtfld" value="${data.Scheme_For}">
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
        <input type="text" name="srcid" class="txtfld" value="${data.Source_Id}">
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
                      <td valign="top"><input type="text"  name="modid" class="txtfld" value="${data.Model_Id}"></td>
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
        <input type="text" name="colid" class="txtfld" value="${data.Color_Id}">
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
                      <td valign="top"><div align="center">From Date  </div></td>
                      <td></td>
                      <td valign="top"><label>
                              <input type="text" name="textfield" class="txtfld" value="${data.Scheme_From}">
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
                              <input type="text" name="textfield2" class="txtfld" value="${data.Scheme_To}">
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
                      <td valign="top"><div align="center"> <input name="Submit" type="submit" class="buttonSubmit" value="DELETE"/>
                      </div></td>
                      <td></td>
                     
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
        var o= new Validator("deletescheme");
    o.addValidation("schmid","req","can't left blank"); </script>




</body></html>
</core:forEach>