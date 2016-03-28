<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver" password="password" url="jdbc:mysql://localhost:3306/ase" user="root" var="ds"></sql:setDataSource>

<sql:query dataSource="${ds}" sql="select Source_Id,Source_Name,Source_Description from source_master where Source_Id='${param['sid']}'" var="rs"></sql:query>

<core:forEach items="${rs.rows}" var="data">



<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>DELETE SOURCE PAGE</title>

<script type="text/javascript" src="JS/gen_validatorv4.js" language="javascript">

</script>

<link rel="stylesheet" href="CSS/stylesheet.css"/>
</head>

<body>
   
    <center><div style="height: 350px; width: 648px">
        
        <form name="addsource" action="deletesource.do">

            <table style="border:0px solid#333;" cellpadding="0" cellspacing="0" width="430">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="36">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">
                      <p>Delete  Source</p>
                      </div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td height="22">&nbsp;</td>
                      <td valign="top" width="150"> <div align="center" class="whfont">Source Id * </div></td>
                      <td width="30">&nbsp;</td>
                      <td width="150" valign="top"><label>
                    
                      <select name="srcid" class="combo" id="source" >
                                               
                            <option value="${data.Source_Id}">${data.Source_Id}</option>
                      

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

                              <input type="text" name="srcn" class="txtfld" value="${data.Source_Name}" readonly/>
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
                              <input type="text" name="srcd" class="txtfld" value="${data.Source_Description}" readonly/>
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
                      <td valign="top" align="right"><input name="Submit" type="submit" class="buttonSubmit" value="Delete"/></td>
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
        </form></div>
    </center>

    <script type="text/javascript" language="javascript">
        var v= new Validator("addsource");
        v.addValidation("srcn","req","can't left blank");
        v.addValidation("srcd","req","can't left blank");
    </script>




</body></html>
</core:forEach>