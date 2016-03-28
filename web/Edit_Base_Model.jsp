<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from basemodel_master where BaseModel_Id=${param['BaseModel_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<html>
    <head>
        <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Update Base Model</title>
        <style type="text/css">
            <!--
            .style1 {font-size: 20px; font-weight: bold;}
            .style2 {color: #FF0000}
            -->
        </style>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>

    <body>
        <div style="width: 648px; height: 350px;">
        <center>
            <form name="editBaseModel" method="post" action="editBaseModel.do">
                <table border="1"><tr><td>
                            <table width="480" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="70" height="50">&nbsp;</td>
                                    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Update BaseModel Details</div></td>
                                    <td width="70">&nbsp;</td>
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
                                    <td valign="top"><div align="center" class="whfont">BaseModel_Id</div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><input type="text" name="t1" class="txtfld" value="${param['BaseModel_Id']}" readonly /></td>
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
                                    <td valign="top"><div align="center" class="whfont">BaseModel_Name<span class="style2">*</span></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><input type="text" name="t2" class="txtfld" value="${data.BaseModel_Name}" /></td>
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
                                    <td valign="top"><div align="center" class="whfont">Acc_Target<span class="style2">*</span>  </div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"> <input type="text" name="t3" class="txtfld" value="${data.Acc_Target}" /></td>
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
                                    <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" /></div></td><td>&nbsp;</td>
                                    <td valign="top"><div align="center"><input type="submit" value="Update"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
                                    <td>&nbsp;</td>
                                </tr>

                                <tr>
                                    <td height="20">&nbsp;</td>
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
            var o = new Validator("editBaseModel");
                o.addValidation("t1","req","Can't left Blank BaseModel_Name");
                o.addValidation("t2","req","Can't left blank Acc_Target");
    </script>
                                    </div>
    </body>
</html>
</c:forEach>