<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>ADD SOURCE PAGE</title>

<script type="text/javascript" src="JS/gen_validatorv4.js" language="javascript">

</script>

<link rel="stylesheet" href="CSS/stylesheet.css"/>

</head>

<body>
    <center>
    <div style="height: 350px; width: 648px;">
    <center>
        <form name="addsource" action="addsource.do">

            <table style="border:0px solid#333;" cellpadding="0" cellspacing="0" width="430">
                  <!--DWLayoutTable-->

                  <tbody><tr>
                    <td width="50" height="40">&nbsp;</td>
                    <td colspan="3" valign="top" ><div class="style1" align="center">Add  Source</div></td>
      <td width="50">&nbsp;</td>
    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td width="150" valign="top"><div align="center" class="whfont">Source Name <span style="color: #ff0000">*</span> </div></td>
      <td width="30">&nbsp;</td>
                      <td width="150" valign="top"><label>
                      <input type="text" name="srcn" class="txtfld"/>
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
                              <input type="text" name="srcd" class="txtfld"/>
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
                      <td valign="top" align="right"><input name="Submit" type="submit" class="buttonSubmit" value="ADD"/></td>
                      <td>&nbsp;</td>
                      <td valign="top"><input name="Submit2" value="RESET"  class="buttonSubmit" type="reset"/></td>
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
    </center>

    <script type="text/javascript" language="javascript">
        var v= new Validator("addsource");
        v.addValidation("srcn","req","can't left blank");
        v.addValidation("srcd","req","can't left blank");
    </script>



</div></center>
</body></html>