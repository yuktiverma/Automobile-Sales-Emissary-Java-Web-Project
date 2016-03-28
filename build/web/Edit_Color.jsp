<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from color_master where Color_Id=${param['Color_Id']}" var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Edit Color Details</title>
        <style type="text/css">
            <!--
           
            .style2 {color: #FF0000}
            -->
        </style>
        <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>

    <body>
        <div style="width:648px; height: 350px; background: white;">
        <center>
            <form name="editColor" action="editColor.do" method="post">
             
                            <table width="480" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="70" height="50">&nbsp;</td>
                                    <td colspan="3" valign="top" ><div align="center" class="style1">Update Color Details</div></td>
                                    <td width="50">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td height="20">&nbsp;</td>
                                    <td width="150" valign="top">&nbsp;</td>
                                    <td width="40">&nbsp;</td>
                                    <td width="150" valign="top">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>

                                <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top" ><div align="center"class="whfont">Color_Id<span class="style2">*</span></div></td>
                                <td>&nbsp;</td>
                               
                                <td valign="top">
                                    <input type="text" name="t1" class="txtfld" readonly="" value="${param['Color_Id']}" />
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
                                <td valign="top" ><div align="center"class="whfont">Model_Id<span class="style2">*</span> </div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t3" class="txtfld" readonly="" value="${data.Model_Id}" />
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
                                    <td valign="top" ><div align="center"class="whfont">Color_Name<span class="style2">*</span></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top">
                                        <input type="text" name="t2" class="txtfld" value="${data.Color_Name}" />
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
                                    <td valign="top"><div align="left"><input type="submit" value="Update"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
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
              var o= new Validator("editColor");
                  o.addValidation("t1","req","Can't left blank Color Name");
        </script></div>
    </body>
</html>
</c:forEach>