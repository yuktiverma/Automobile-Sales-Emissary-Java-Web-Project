<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>
<s:query dataSource="${ds}" sql="select * from model_master where Model_Id=${param['Model_Id']} " var="rs"></s:query>
<c:forEach items="${rs.rows}" var="data">

<html>
    <head>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            <!--
            
            .style2 {color: #FF0000}
            -->
        </style>
        <title>Delete Model Details</title>
    </head>

    <body>
        <div style="width: 648px;height: 350px;">
        <center>
            <form action="deleteModel.do" method="post">
                                            <table width="480" border="0" cellpadding="0" cellspacing="0">

                            <tr>
                                <td width="70" height="25">&nbsp;</td>
                                <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Delete Model Details</div></td>
                                <td width="70">&nbsp;</td>
                            </tr>

                                    <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top" ><div align="center" class="whfont">Model_Id</div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t1" class="txtfld" readonly="" value="${param['Model_Id']}" />
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
                                <td valign="top" ><div align="center" class="whfont">BaseModel_Id</div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t2" class="txtfld" readonly="" value="${data.BaseModel_Id}" />
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
                                <td valign="top" ><div align="center" class="whfont">Model_Name</div></td>
                                <td>&nbsp;</td>
                                <td valign="top"><input type="text" name="t3" class="txtfld" readonly=""  value="${data.Model_Name}"/></td>
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
                                <td valign="top"><div align="center" class="whfont">Engine</div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t4" class="txtfld" readonly="" value="${data.Engine}"/>
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
                                <td valign="top"><div align="center" class="whfont">Capacity</div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t5" class="txtfld" readonly="" value="${data.Capacity}"/>
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
                                <td height="10">&nbsp;</td>
                                <td valign="top"><div align="center" class="whfont">Dealer_Margin</div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t6" class="txtfld" readonly="" value="${data.Dealer_Margin}"/>
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
                                <td valign="top"><div align="center" class="whfont">Power</div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t7" class="txtfld" readonly="" value="${data.Power}"/>
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
                                <td valign="top"><div align="center" class="whfont">Mileage</div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t8" class="txtfld" readonly="" value="${data.Mileage}"/>
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
                                <td valign="top"><div align="center" class="whfont">Engine_Type</div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t9" class="txtfld" readonly="" value="${data.Engine_Type}"/>
                                </td>
                                <td>&nbsp;</td>
                            </tr>

                            
                            <tr>
                                    <td height="20">&nbsp;</td>
                                    <td valign="top"></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><div align="center"><input type="submit"  value="Delete"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
                                    <td>&nbsp;</td>
                                </tr>

                                     </table>
                            </form>
        </center>
                                </div>
  </body>
</html>
</c:forEach>