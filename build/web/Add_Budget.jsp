<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        <title>Add Budget</title>
        <style type="text/css">
            .style1 { font-size: 20px; font-weight: bold;}
            .style2 {color: #FF0000}
        </style>
        <link rel="stylesheet" href="CSS/stylesheet.css"/>

        <script type="text/javascript" language="javascript">
    var xhro;
    function getModel()
    {

        var v=document.getElementById("base").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","model_1.jsp?mid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("st").innerHTML=xhro.responseText;
        }
    }
</script>
    </head>

    <body>
        <div style="width: 648px; height: 350px;">
        <center>
            <form name="addBudget" action="addBudget.do" method="get">
                <table border="1"><tr><td>
                            <table width="480" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="70" height="30">&nbsp;</td>
                                    <td colspan="3" valign="top" ><div align="center" class="style1">Add Budget Details</div></td>
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
                                    <td valign="top" ><div align="center" class="whfont">Branch_Id<span class="style2">*</span> </div></td>
                                    <td>&nbsp;</td>
                                    <s:query dataSource="${ds}" sql="select * from branch_master" var="rs"></s:query>
                                    <td valign="top">
                                        <select name="t1" class="combo">
                                            <option value="select">--select--</option>
                                            <c:forEach items="${rs.rows}" var="data">
                                                    <option value="${data.Branch_Id}" >${data.Branch_Id}</option>
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
                                    <td valign="top" ><div align="center" class="whfont">BaseModel_Id<span class="style2">*</span> </div></td>
                                    <td>&nbsp;</td>
                                    <s:query dataSource="${ds}" sql="select * from basemodel_master" var="rs"></s:query>
                                    <td valign="top">
                                        <select name="t2" onchange="getModel();" id="base" class="combo">
                                            <option value="select">--Select--</option>
                                                <c:forEach items="${rs.rows}" var="data">
                                                    <option value="${data.BaseModel_Id}" >${data.BaseModel_Id}</option>
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
                                    <td valign="top"><div align="center" class="whfont">Model_Id<span class="style2">*</span></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"><div id="st" >
                                        <select name="t3" class="combo">
                                        <option value="select">--select--</option>
                                        </select></div>
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
                                    <td valign="top"><div align="center" class="whfont">BudgetMonth_Id<span class="style2">*</span></div></td>
                                    <td >&nbsp;</td>
                                    <s:query dataSource="${ds}" sql="select * from month_master" var="rs"></s:query>
                                    <td valign="top" ><select name="t4" class="combo">
                                            <option value="select">--select--</option>
                                            <c:forEach items="${rs.rows}" var="data">
                                                    <option value="${data.Month_Id}" >${data.Month_Id}</option>
                                            </c:forEach>
                                        </select>
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
                                    <td valign="top"><div align="center" class="whfont">Budget_Year<span class="style2">*</span></div></td>
                                    <td >&nbsp;</td>
                                    <td valign="top" ><input type="text" name="t5" class="txtfld" /></td>
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
                                    <td valign="top"><div align="center" class="whfont">Budget_Amount<span class="style2">*</span></div></td>
                                    <td>&nbsp;</td>
                                    <td valign="top"> <input type="text" name="t6" class="txtfld" /></td>
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
                                    <td valign="top"><div align="center"><input type="reset" value="Reset" class="buttonSubmit" /></div></td>
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
                            </table></td></tr>
                </table>
            </form>
        </center>
        <script type="text/javascript" language="javascript">
              var o= new Validator("addBudget");
                  o.addValidation("t1","req","Can't left blank Branch_Id");
                  o.addValidation("t2","req","Can't left blank Model_Id");
                  o.addValidation("t3","req","Can't left blank BaseModel_Id");
                  o.addValidation("t4","req","Can't left Blank Budget_Amount");
                  o.addValidation("t5","req","Can't left Blank Month");
                  o.addValidation("t6","req","Can't left Blank Year");
        </script>
        </div>
    </body>
</html>