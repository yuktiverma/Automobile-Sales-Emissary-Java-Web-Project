<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Add Color Details</title>
        <style type="text/css">
            <!--
        
            .style2 {color: #FF0000}
            -->
        </style>
        <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>
    
    <body>
        <div style="width: 648px; height: 350px;">
        <center>
            <form name="addColor" method="get" action="addColor.do">
              
                            <table width="480" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="70" height="30">&nbsp;</td>
                                    <td colspan="3" valign="top" ><div align="center" class="style1">Add Color Details</div></td>
                                    <td width="50">&nbsp;</td>
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
                                    <select name="t2" class="combo">
                                        <option value="select">--Select--</option>
                                        <c:forEach items="${rs.rows}" var="data">
                                                    <option value="${data.Model_Id}" >${data.Model_Name}</option>
                                        </c:forEach>
                                    </select>
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
                                    <td valign="top" ><div align="center" class="whfont">Color_Name<span class="style2">*</span></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top">
                                        <select name="t1" class="combo">
                                         <option value="select">--Select--</option>
                                        <option value="Red">Red</option>
                                        <option value="Blue">Blue</option>
                                        <option value="Green">Green</option>
                                        <option value="Yellow">Yellow</option>
                                        <option value="Orange">Orange</option>
                                        <option value="Grey">Grey</option>
                                    </select>
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
                                    <td valign="top"><div align="right"><input type="reset" value="Reset" class="buttonSubmit" /></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><div align="left"><input type="submit" name="Submit2" value="Submit"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
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
        </center>
        <script type="text/javascript" language="javascript">
              var o= new Validator("addColor");
                  o.addValidation("t1","req","Can't left blank Color Name");
        </script>
        </div>
    </body>
</html>