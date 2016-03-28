<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Add Designation Page</title>
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style>

<script src="JS/gen_validatorv4.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <div style="width: 648px ; height:350px; background: white;">
    <center>
        <form name="add_desig" action="adddesig.do" method="post">

            <table border="1"><tr><td>
<table width="540" border="0" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="70" height="40">&nbsp;</td>
    <td colspan="3" valign="top" ><div align="center" class="style1">Enter The Designation Details </div></td>
    <td width="70">&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td width="180" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="180" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td valign="top" ><div align="center" class="whfont">Designation Name <span class="style2">*</span> </div></td>
    <td>&nbsp;</td>
    <td valign="top"><input type="text" name="t1"  class="txtfld"/></td>
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
    <td valign="top"><div align="center" class="whfont"> Description </div></td>
    <td>&nbsp;</td>
    <td valign="top"><textarea name="ta1"></textarea></td>
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
    <td valign="top"><div align="center" class="whfont">Access To Branches <span class="style2">*</span></div></td>
    <td>&nbsp;</td>
    <td valign="top"><select name="selectc1" class="combo">
            <option>--select--</option>
            <option value="1">Yes</option>
            <option value="0">No</option>
        </select> </td>
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
    <td valign="top"><div align="center" class="whfont">Access To Teams <span class="style2">*</span></div></td>
    <td>&nbsp;</td>
    <td valign="top"><select name="selectc2" class="combo">
            <option>--select--</option>
           <option value="1">Yes</option>
            <option value="0">No</option>
        </select> </td>
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
    <td ></td>
    <td>&nbsp;</td>
    <td valign="top"><div align="center"> <input type="reset" name="Submit" value="Reset" class="buttonSubmit" />
      <input type="submit" name="Submit2" value="Submit"  onclick="fun(); return false" class="buttonSubmit" />
    </div></td>
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
              var o= new Validator("add_desig");
                 o.addValidation("selectc1","req","Can't left blank Field");
                  o.addValidation("t1","req","Can't left blank Designation Name ");
                  o.addValidation("selectc2","req","Can't left Blank field");
    
  </script>


</div>
</body>
</html>
