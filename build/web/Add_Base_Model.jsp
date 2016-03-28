<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<html>
    <head>
        <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Add Base Model</title>
        <style type="text/css">
            <!--
            .style1 {font-size: 20px; font-weight: bold;}
            .style2 {color: #FF0000}
            -->
        </style>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>
    
    <body>
        <div style="width: 648px; height: 350px">
        <center>
            <form name="addBaseModel" method="post" action="addBaseModel.do">
                <table border="1"><tr><td>
                            <table width="480" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="70" height="30">&nbsp;</td>
                                    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Add BaseModel Details</div></td>
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
                                    <td valign="top"><div align="center" class="whfont">BaseModel_Name<span class="style2">*</span></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><input type="text" name="t1" class="txtfld" /></td>
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
                                    <td valign="top"><div align="center" class="whfont">Acc_Target<span class="style2">*</span>  </div></td>
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
                                    <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" /></div></td><td>&nbsp;</td>
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
            var o = new Validator("addBaseModel");
                o.addValidation("t1","req","Can't left Blank BaseModel_Name");
                o.addValidation("t2","req","Can't left blank Acc_Target");
    </script>
        </div>
    </body>
</html>