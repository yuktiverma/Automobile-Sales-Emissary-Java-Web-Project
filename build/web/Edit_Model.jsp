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
        <title>Update Model Details</title>
    </head>

    <body>
        <div style="width: 648px; height: 350px;">
        <center>
            <form action="editModel.do" method="get">
               
                            <table width="480" border="0" cellpadding="0" cellspacing="0">

                            <tr>
                                <td width="70" height="25">&nbsp;</td>
                                <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Update Model Details</div></td>
                                <td width="70">&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="20">&nbsp;</td>
                                <td width="150" valign="top" ><div align="center" class="whfont">Model_Id</div></td>
                                <td width="40">&nbsp;</td>
                                <td width="150" valign="top">
                                    <input type="text" name="t1" class="txtfld" readonly="" value="${param['Model_Id']}" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="5">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top" ><div align="center"class="whfont">Base Model_Id</div></td>
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
                                <td valign="top" ><div align="center"class="whfont">Model_Name<span class="style2">*</span></div></td>
                                <td>&nbsp;</td>
                                <td valign="top"><input type="text" name="t3" class="txtfld" value="${data.Model_Name}"/></td>
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
                                <td valign="top"><div align="center"class="whfont">Engine<span class="style2">*</span></div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t4" class="txtfld" value="${data.Engine}"/>
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
                                <td valign="top"><div align="center"class="whfont">Capacity<span class="style2">*</span></div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t5" class="txtfld" value="${data.Capacity}"/>
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
                                <td valign="top"><div align="center"class="whfont">Dealer_Margin<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t6" class="txtfld" value="${data.Dealer_Margin}"/>
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
                                <td valign="top"><div align="center"class="whfont">Power<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t7" class="txtfld" value="${data.Power}"/>
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
                                <td valign="top"><div align="center"class="whfont">Mileage<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t8" class="txtfld" value="${data.Mileage}"/>
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
                                <td valign="top"><div align="center"class="whfont">Engine_Type<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t9" class="txtfld" value="${data.Engine_Type}"/>
                                </td>
                                <td>&nbsp;</td>
                            </tr>

                           

                            <tr>
                                    <td height="20">&nbsp;</td>
                                    <td valign="top"></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><div align="center"><input type="submit"  value="Update"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
                                    <td>&nbsp;</td>
                                </tr>

                            
                </table>
                            </form>
        </center></div>
  </body>
</html>
</c:forEach>