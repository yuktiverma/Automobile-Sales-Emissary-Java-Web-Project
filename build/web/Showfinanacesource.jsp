<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>SHOW FINANCE SOURCE PAGE</title/>

<script type="text/javascript" src="JS/gen_validatorv4.js" language="javascript">

</script>

<link rel="stylesheet" href="CSS/stylesheet.css"/>
<script  type="text/javascript" language="javascript">
    var xhro;
    function getSource()
    {
        var o= document.getElementById("src1").value;
        xhro=new XMLHttpRequest();
        xhro.onreadystatechange=myfun;
        xhro.open("get","Showfinanacesource_1.jsp?sid="+o+"",true);
        xhro.send();

    }
        function myfun()
    {

        if(xhro.readyState==4)
        {
            document.getElementById("showfinance1").innerHTML=xhro.responseText;
        }
    }



</script>
</head>

<body>
    
    <center><div style="height: 350px; width: 648px">
        <div id="showfinance1">
        <form name="addfinancesource" action="addfinance.do">

            <table style="border:1px solid#333;" cellpadding="0" cellspacing="0" width="480">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="70" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">
                      <p>Show Finance Source</p>
                      </div></td>
      <td width="66">&nbsp;</td>
    </tr>

                  <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top"> <div align="center" class="whfont">Finance Id </div></td>
                      <sql:query dataSource="${ds}" sql="select * from finance_master" var="rs"></sql:query>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                              <select onchange="getSource();" id="src1" name="fincid" class="combo">
                          <option></option>
                          <core:forEach items="${rs.rows}" var="data">
                <option value="${data.Finance_Id}">${data.Finance_Id}</option>
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
                      <td width="150" valign="top"><div align="center" class="whfont">Finance Description</div></td>
      <td width="40">&nbsp;</td>
                      <td width="150" valign="top"><label>
                              <input type="text" name="findesc" class="txtfld" readonly/>
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
                      <td valign="top"> <div align="center" class="whfont">Source Id </div></td>
                      <td>&nbsp;</td>
                      <td valign="top"><label>
                      <input type="text" name="srcid" class="txtfld" value="${data.Source_Id}"/>
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
                    
  </tbody>
                    </table>
        </form>
                      </div></div>
    </center>

    <script type="text/javascript" language="javascript">
         var o= new Validator("addfinancesource");
    o.addValidation("findesc","req","can't left blank");

    </script>



</body></html>