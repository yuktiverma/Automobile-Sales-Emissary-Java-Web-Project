<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" user="root"  password="password" url="jdbc:mysql://localhost:3306/ase" var="ds"></sql:setDataSource>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>ADD SOURCE PAGE</title>

<script type="text/javascript" src="JS/gen_validatorv4.js" language="javascript">

</script>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

<script type="text/javascript" language="javascript">
    var xhro;
    function getSource()
    {

        var v=document.getElementById("source").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Show_Source_1.jsp?sid="+v+"",true);
        xhro.send();
    }
    function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("showsource").innerHTML=xhro.responseText;
        }
    }
</script>


</head>

<body>
    
    <center><div style="height: 350px; width: 648px">
        <div id="showsource">
        <form name="addsource" action="">

            <table style="border:0px solid#333;" cellpadding="0" cellspacing="0" width="440">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">
                      <p>Show  Source</p>
                      </div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td  height="22">&nbsp;</td>
                      <td width="150" valign="top"> <div align="center" class="whfont">Source Id * </div></td>
                      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>
                      <sql:query dataSource="${ds}" sql="select * from source_master" var="rs"></sql:query>
                      <select name="srcid" class="combo" id="source" onchange="getSource()" >
                          <option></option>
                          <core:forEach items="${rs.rows}" var="data">
                            <option value="${data.Source_Id}">${data.Source_Id}</option>
                          </core:forEach>

                      </select>
                      </label></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td width="150" valign="top"><div align="center" class="whfont">Source Name <span style="color: #ff0000">*</span> </div></td>
      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>
                        
                        <input type="text" name="srcn" class="txtfld" value="${data.Source_Name}"/>
                        
                      </label></td>
      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"> <div align="center" class="whfont">Source Description <span style="color: #ff0000">*</span></div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                        
                                  <input type="text" name="srcd" class="txtfld" value="${data.Source_Description}"/>
                        
                      </label></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top" align="right"><input name="Submit" type="submit" class="buttonSubmit" value="Ok"/></td>
                      <td>&nbsp;</td>
                      <td valign="top"></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
  </tbody>
                    </table>
        </form>
</div></div>
    </center>

   



</body></html>