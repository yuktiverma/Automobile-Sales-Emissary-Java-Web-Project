<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from budget_master where Budget_Id=${param['Budget_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Budget Details</title>
        <style type="text/css">
            .style1 { font-size: 20px; font-weight: bold;}
            .style2 {color: #FF0000}
        </style>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
    </head>

    <body>
        <div style="width: 648px; height: 350px">
        <center>
            <form action="AfterLogin.do" method="post">
                
                            <table width="480" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="70" height="30">&nbsp;</td>
                                    <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Show Budget Details</div></td>
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
                                    <td valign="top" ><div align="center" class="whfont">Budget_Id</div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><input type="text" name="t5" class="txtfld" readonly="" value="${param['Budget_Id']}"/></td>
                                    
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
                                    <td valign="top" ><div align="center" class="whfont">Branch_Id</div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><input type="text" name="t5" class="txtfld" readonly="" value="${data.Branch_Id}"/></td>
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
                                    <td valign="top" ><div align="center" class="whfont">BaseModel_Id</div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top">
                                        <input type="text" name="t5" class="txtfld" readonly="" value="${data.BaseModel_Id}"/>
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
                                    <td valign="top"><div align="center" class="whfont">Model_Id</div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top">
                                        <input type="text" name="t5" class="txtfld" readonly="" value="${data.Model_Id}" />
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
                                    <td valign="top"><div align="center" class="whfont">BudgetMonth_Id</div></td>
                                    <td >&nbsp;</td>
                                    <td valign="top" >
                                        <input type="text" name="t5" class="txtfld" readonly="" value="${data.BudgetMonth_Id}" />
                                    </td>
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
                                    <td valign="top"><div align="center" class="whfont">Budget_Year</div></td>
                                    <td >&nbsp;</td>
                                    <td valign="top" ><input type="text" name="t5" class="txtfld" value="${data.Budget_Year}" /></td>
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
                                    <td valign="top"><div align="center" class="whfont">Budget_Amount</div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"> <input type="text" name="t6" class="txtfld" value="${data.Budget_Amount}"/></td>
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
                                    <td valign="top"></td>
                                    <td>&nbsp;</td>
                                    <td><div align="center"><input type="submit" value="Back" class="buttonSubmit" /></div></td>
                               <td>&nbsp;</td>
                                </tr>

                                <tr>
                                    <td height="10">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
             
            </form>
        </center>
        </div>
    </body>
</html>
</c:forEach>