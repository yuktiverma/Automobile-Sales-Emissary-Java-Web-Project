<%--
    Document   : Edit_Area
    Created on : Apr 22, 2013, 2:49:33 PM
    Author     : Yukti
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Add_Industry_Details</title>
<style type="text/css">
<!--

.style2 {color: #FF0000}
-->
</style>

<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <div style="width:648px; height: 350px; background: white;">
    <center>
 
  <form name="addarea" id="detailsform" action="addindustry.do">
            <table border="1"><tr><td>
<table width="480" border="0" cellpadding="0" cellspacing="0" >

  <tr>
    <td width="70" height="50">&nbsp;</td>
    <td colspan="4" valign="top" bgcolor="lightblue"><div align="center" class="style1">Add Industry Details</div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="150" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center"class="whfont">Industry_Name<span class="style2"></span>  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input name="t1" class="txtfld">
           
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td height="20">&nbsp;</td>
    <td valign="top"><div align="center"class="whfont">Description<span class="style2"></span>  </div></td>
    <td>&nbsp;</td>
    <td valign="top"> <input type="text" name="t2" class="txtfld" />
    </td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
      
    <td><div align="right"><input type="reset" value="Reset" class="buttonSubmit" />  </div></td>
    <td>&nbsp;</td>
    <td valign="top"><div align="left"><input type="submit" name="Submit2" value="Submit"  onclick="fun(); return false" class="buttonSubmit" /></div></td>
    <td>&nbsp;</td>
  </tr>


  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
                    </td></tr></table>
        </form>



    </center>
<script type="text/javascript" language="javascript">
              var o= new Validator("detailsform");
                  o.addValidation("t1","req","Can't left blank ");
                  o.addValidation("t2","req","Can't left blank ");


  </script></div>
    </body>
</html>


