<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" user="root"  password="password" url="jdbc:mysql://localhost:3306/ase" var="ds"></sql:setDataSource>
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
<script type="text/javascript" language="javascript">
    var xhro;
    function getScheme()
    {

        var v=document.getElementById("schmid").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Editscheme_1.jsp?sid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("scheme").innerHTML=xhro.responseText;
        }
    }
</script>


<link rel="stylesheet" href="CSS/stylesheet.css"/>
<script type="text/javascript" src="JS/cal2.js"></script>
<script type="text/javascript" src="JS/cal_conf2.js"></script>
<script type="text/javascript" src="JS/gen_validatorv4.js"></script>
 </head>

<body>
    
    <center>
        <div id="scheme">
            <form name="editscheme" action="editscheme.do" >

                <table  style="border:0px solid#333" cellpadding="0" cellspacing="0" width="440">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
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
                      <td width="150"  valign="top"><div align="center">Scheme Id <span class="style2">*</span></div></td>
                      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>
                         <sql:query dataSource="${ds}" sql="select * from scheme_master" var="rs"></sql:query>
                         <select name="schmid" class="combo" onchange="getScheme()" id="schmid" >
                             <option></option>
                             <core:forEach items="${rs.rows}" var="data">
                             <option value="${data.Scheme_Id}" >${data.Scheme_Id}</option>

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
                      <td width="150" valign="top"><div align="center">Scheme For </div></td>
      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>

           <select name="schmfor" class="combo">
          
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
                      <td valign="top"><div align="center">Source Id </div></td>
      <td>&nbsp;</td>
                      <td valign="top"><label>
        <select name="srcid" class="combo">
          <option>-----select------</option>
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
                      <td valign="top"><select name="modid" class="combo">
                        <option selected="selected" value="select">--select--</option>
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
        <select name="colid" class="combo">
          <option>-----select-----</option>
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
                        <input type="text" name="fdate" class="txtfld">
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
                        <input type="text" name="tdate" class="txtfld">
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
                      <td valign="top"><input name="Submit2" value="RESET" class="buttonSubmit" type="reset"></td>
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
    </div>
    </center>

<script type="text/javascript" language="javascript">
        var o= new Validator("editscheme");
    o.addValidation("schmid","req","can't left blank"); </script>




</body></html>