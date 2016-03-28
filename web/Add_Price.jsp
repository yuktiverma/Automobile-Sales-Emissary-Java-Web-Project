<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>

<html>
    <head>
        <script type="text/javascript" src="JS/cal2.js"></script>
        <script type="text/javascript" src="JS/cal_conf2.js"></script>
        <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Price Details</title>
        <style type="text/css">
            
            .style2 {color: #FF0000}
        </style>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>
    
    <body>
        <div style="width: 648px; height: 350px;">
        <center>
            <form name="addPrice" action="addPrice.do" method="post">
            <table border="1"><tr><td>
                        <table width="480" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="70" height="30">&nbsp;</td>
                                <td colspan="3" valign="top" ><div align="center" class="style1">Add Price Details</div></td>
                                <td width="70">&nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td height="10">&nbsp;</td>
                                <td width="150" valign="top">&nbsp;</td>
                                <td width="40">&nbsp;</td>
                                <td width="150" valign="top">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top" ><div align="center" class="whfont">Model_Id<span class="style2">*</span> </div></td>
                                <td>&nbsp;</td>
                                <s:query dataSource="${ds}" sql="select * from model_master" var="rs"></s:query>
                                <td valign="top">
                                    <select name="t1" class="combo">
                                        <option value="select">select</option>
                                        <c:forEach items="${rs.rows}" var="data">
                                            <option value="${data.Model_Id}" >${data.Model_Name}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td height="10">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top"><div align="center"class="whfont">Price<span class="style2">*</span>  </div></td>
                                <td>&nbsp;</td>
                                <td valign="top"> <input type="text" name="t2" class="txtfld" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td height="10">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top"><div align="center"class="whfont">Date_From<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top" ><input type="text" name="t3" class="Datefld" /></td>
                                <td ><a href="javascript:showCal('Price1')"><img src="Images/calendar.jpg"/></a></td>
                            </tr>
                            
                            <tr>
                                <td height="10">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top"><div align="center"class="whfont">Date_To<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top" ><input type="text" name="t4" class="Datefld" /></td>
                                <td><a href="javascript:showCal('Price2')"><img src="Images/calendar.jpg"/></a></td>
                            </tr>
                            
                            <tr>
                                <td height="10">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" /></div></td>
                                <td>&nbsp;</td>
                                <td valign="top"><div align="center"><input type="submit" name="Submit2" value="Submit"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
                                <td>&nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td height="10">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table></td></tr>
            </table>
            </form>
    </center>
        <script type="text/javascript" language="javascript">
              var o= new Validator("addPrice");
                  o.addValidation("t1","req","Can't left blank Model Id");
                  o.addValidation("t2","req","Can't left blank Price");
                  o.addValidation("t3","req","Can't left blank Date From");
                  o.addValidation("t4","req","Can't left Blank Date To");
        </script>
        </div>
    </body>
</html>