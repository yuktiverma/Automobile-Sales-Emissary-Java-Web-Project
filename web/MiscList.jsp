<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Misc List</title>
        <style type="text/css">
            .style1 { font-size: 20px; font-weight: bold;}
            .style2 {color: #FF0000}
        </style>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>

    <body>
        <div style="width: 648px; height: 350px;">
        <center>
            <form action="misclist.do" method="get">
                <table border="1"><tr><td>
                            <table width="480" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="70" height="30">&nbsp;</td>
                                    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Select Sub Modules</div></td>
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
                                  <center>
                                      <td height="20">&nbsp;</td>
                                      <td width="25%"><input type="radio" name="misc_list" value="Models" onclick="form.submit()"/>Models</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    </center>
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
                                     <td width="25%"><input type="radio" name="misc_list" value="Branch" onclick="form.submit()">Branch</td>
                                    <td>&nbsp;</td>
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
                                     <td width="25%"><input type="radio" name="misc_list" value="Employee" onclick="form.submit()">Employee</td>
                                    <td>&nbsp;</td>
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
                                     <td width="25%"><input type="radio" name="misc_list" value="Target" onclick="form.submit()">Target</td>
                                    <td>&nbsp;</td>
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
                                     <td width="25%"><input type="radio" name="misc_list" value="Prospect" onclick="form.submit()">Prospect</td>
                                    <td>&nbsp;</td>
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
                                    <td height="20"></td>
                                    <td valign="top"> <div align="right">
                                            <td>&nbsp; <input type="reset" value="Reset" class="buttonSubmit" />
                                    </div></td>
                                    <td>&nbsp;</td>
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
        </div>
    </body>
</html>