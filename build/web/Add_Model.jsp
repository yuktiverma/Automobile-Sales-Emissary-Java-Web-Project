<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></s:setDataSource>

<html>
    <head>
        <script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            <!--
            .style1 { font-size: 20px; font-weight: bold;}
            .style2 {color: #FF0000}
            -->
        </style>
        <title>Add Model</title>
    </head>

    <body>
        <div style="width: 648px; height: 350px;">
        <center>
            <form name="addModel" method="get" action="addModel.do">
                
                            <table width="480" border="1" cellpadding="0" cellspacing="0">

                            <tr>
                                <td width="70" height="30">&nbsp;</td>
                                <td colspan="3" valign="top" bgcolor="lightblue"><div align="center" class="style1">Add Model Details</div></td>
                                <td width="70">&nbsp;</td>
                            </tr>
                            
                                      <tr>
                                <td height="20">&nbsp;</td>
                                <td valign="top" ><div align="center" class="whfont">BaseModel_Name<span class="style2">*</span> </div></td>
                                <td>&nbsp;</td>
                                <s:query dataSource="${ds}" sql="select * from basemodel_master" var="rs"></s:query>
                                <td valign="top">
                                    <select name="t1" class="combo">
                                        <option value="select">select</option>
                                        <c:forEach items="${rs.rows}" var="data">
                                                    <option value="${data.BaseModel_Id}" >${data.BaseModel_Name}</option>
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
                                <td valign="top" ><div align="center" class="whfont">Model_Name<span class="style2">*</span> </div></td>
                                <td>&nbsp;</td>
                                <td valign="top"><input type="text" name="t2" class="txtfld" /></td>
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
                                <td valign="top"><div align="center" class="whfont">Engine<span class="style2">*</span>  </div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t3" class="txtfld" />
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
                                <td valign="top"><div align="center" class="whfont">Capacity<span class="style2">*</span></div></td>
                                <td>&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t4" class="txtfld" />
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
                                <td valign="top"><div align="center" class="whfont">Dealer_Margin<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t5" class="txtfld" />
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
                                <td valign="top"><div align="center" class="whfont">Power<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t6" class="txtfld" />
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
                                <td valign="top"><div align="center" class="whfont">Mileage<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t7" class="txtfld" />
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
                                <td valign="top"><div align="center" class="whfont">Engine_Type<span class="style2">*</span></div></td>
                                <td >&nbsp;</td>
                                <td valign="top">
                                    <input type="text" name="t8" class="txtfld" />
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
                                <td valign="top"><div align="right"><input type="reset" value="Reset" class="buttonSubmit" /></div> </td>
                                <td>&nbsp;</td>
                                <td valign="top"><div align="center"><input type="submit" value="Submit"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
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
        <script type="text/javascript" language="javascript">
              var o= new Validator("addModel");
                  o.addValidation("selectb","req","Can't left blank Branch");
                  o.addValidation("t1","req","Can't left blank Team Type Name ");
                  o.addValidation("t2","req","Can't left blank Name");
                  o.addValidation("selectmid","req","Can't left Blank Manager Id");
                  o.addValidation("selectlid","req","Can't left Blank Leader Id");
  </script>
        </div>
  </body>
</html>`