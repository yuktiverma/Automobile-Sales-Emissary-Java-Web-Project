package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class Add_005fProspect_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_setDataSource_var_user_url_password_driver_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_query_var_sql_dataSource_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_s_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_query_var_sql_dataSource_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_s_setDataSource_var_user_url_password_driver_nobody.release();
    _jspx_tagPool_s_query_var_sql_dataSource_nobody.release();
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_s_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add Prospect</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write("\n");
      out.write(".style2 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("          <script type=\"text/javascript\" src=\"JS/cal2.js\"></script>\n");
      out.write("          <script type=\"text/javascript\" src=\"JS/cal_conf2.js\"></script>\n");
      out.write("          <script src=\"JS/gen_validatorv4.js\" type=\"text/javascript\" language=\"javascript\"></script>\n");
      out.write("          <link rel=\"stylesheet\" href=\"CSS/stylesheet.css\"/>\n");
      out.write("\n");
      out.write("          <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("    var xhro;\n");
      out.write("    function getState()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        var v=document.getElementById(\"con\").value;\n");
      out.write("       xhro=new XMLHttpRequest();\n");
      out.write("        xhro.onreadystatechange=myfun;\n");
      out.write("        xhro.open(\"get\",\"state.jsp?cid=\"+v+\"\",true);\n");
      out.write("        xhro.send();\n");
      out.write("    }\n");
      out.write("    function myfun()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        if(xhro.readyState==4)\n");
      out.write("        {\n");
      out.write("            document.getElementById(\"st\").innerHTML=xhro.responseText;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("    var xhro1;\n");
      out.write("    function getCity()\n");
      out.write("    {\n");
      out.write("    var s=document.getElementById(\"stt\").value;\n");
      out.write("         xhro1=new XMLHttpRequest();\n");
      out.write("        xhro1.onreadystatechange=myfun1;\n");
      out.write("        xhro1.open(\"get\",\"city.jsp?sid=\"+s+\"\",true);\n");
      out.write("        xhro1.send();\n");
      out.write("    }\n");
      out.write("    function myfun1()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        if(xhro1.readyState==4)\n");
      out.write("        {\n");
      out.write("            document.getElementById(\"city\").innerHTML=xhro1.responseText;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("    var xhro2;\n");
      out.write("    function getArea()\n");
      out.write("    {\n");
      out.write("    var s=document.getElementById(\"area\").value;\n");
      out.write("         xhro2=new XMLHttpRequest();\n");
      out.write("        xhro2.onreadystatechange=myfun2;\n");
      out.write("        xhro2.open(\"get\",\"area.jsp?aid=\"+s+\"\",true);\n");
      out.write("        xhro2.send();\n");
      out.write("    }\n");
      out.write("    function myfun2()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        if(xhro2.readyState==4)\n");
      out.write("        {\n");
      out.write("            document.getElementById(\"ar\").innerHTML=xhro2.responseText;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("function addDate(){\n");
      out.write("date = new Date();\n");
      out.write("var month = date.getMonth()+1;\n");
      out.write("var day = date.getDate();\n");
      out.write("var year = date.getFullYear();\n");
      out.write("\n");
      out.write("if (document.getElementById('addcal3').value == ''){\n");
      out.write("document.getElementById('addcal3').value = year + '-' + month + '-' + day;\n");
      out.write("}\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("          \n");
      out.write("<script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("function getCal(){\n");
      out.write("\n");
      out.write("var date1=document.getElementById('addcal1').value;\n");
      out.write("var date2=document.getElementById('addcal2').value;\n");
      out.write("var date3 = date1.split(\"-\");\n");
      out.write("var date4 = date2.split(\"-\");\n");
      out.write("if(date4[0]>=date3[0])\n");
      out.write("    {\n");
      out.write("        if(date4[1]>=date3[1])\n");
      out.write("            {\n");
      out.write("                if(date4[2]>=date3[2])\n");
      out.write("                    {\n");
      out.write("                        return true;\n");
      out.write("                    }\n");
      out.write("                    else\n");
      out.write("                        {\n");
      out.write("                            alert('Plan to buy date cant be before of follow up date');\n");
      out.write("                        }\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("                {\n");
      out.write("                    alert('Plan to buy date cant be before of follow up date');\n");
      out.write("                }\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {\n");
      out.write("       alert('Plan to buy date cant be before of follow up date');\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body onload=\"addDate();\">\n");
      out.write("       \n");
      out.write("    <center>\n");
      out.write("        <form action=\"addprospect.do\" method=\"get\" name=\"addpros\" id=\"addprosform\">\n");
      out.write("        <table border=\"1\"><tr><td>\n");
      out.write("\n");
      out.write("                    <table width=\"745\" cellpadding=\"0\" cellspacing=\"0\" >\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td width=\"20\" height=\"40\">&nbsp;</td>\n");
      out.write("    <td colspan=\"7\" valign=\"top\" ><p align=\"center\" class=\"style1\">Prospect Detail</p></td>\n");
      out.write("    <td width=\"20\">&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td width=\"150\">&nbsp;</td>\n");
      out.write("    <td width=\"30\">&nbsp;</td>\n");
      out.write("    <td width=\"150\">&nbsp;</td>\n");
      out.write("    <td width=\"30\">&nbsp;</td>\n");
      out.write("    <td width=\"150\" >&nbsp;</td>\n");
      out.write("    <td width=\"30\">&nbsp;</td>\n");
      out.write("    <td width=\"150\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("     <td valign=\"top\"><div align=\"center\">Branch Name<span class=\"style2\">*</span></div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <td valign=\"top\" ><select name=\"s1\" class=\"combo\">\n");
      out.write("      <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>    </td>\n");
      out.write("   <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Status</div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <td valign=\"top\"><select name=\"s2\" class=\"combo\">\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("     <td valign=\"top\"><div align=\"center\">Prospect Type<span class=\"style2\">*</span></div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <td valign=\"top\" ><select name=\"s3\" class=\"combo\">\n");
      out.write("      <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>    </td>\n");
      out.write("   <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Industry Name<span class=\"style2\">*</span></div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <td valign=\"top\"><select name=\"s4\" class=\"combo\">\n");
      out.write("      <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("  <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">First Name<span class=\"style2\">*</span> </div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><input type=\"text\" name=\"t1\" class=\"txtfld\" /></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><div align=\"center\">Last Name</div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><input type=\"text\" name=\"t2\" class=\"txtfld\" /></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("    <tr>\n");
      out.write("    <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("<form name=\"custdet\">\n");
      out.write("<tr>\n");
      out.write("  <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td colspan=\"3\" valign=\"top\" bgcolor=lightgray> <div align=\"center\">Prospect Address</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td colspan=\"3\" valign=\"top\" bgcolor=lightgray><div align=\"center\">Product Detail</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("<tr>\n");
      out.write("  <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"200\">&nbsp;</td>\n");
      out.write("    <td colspan=\"3\" valign=\"top\" >\n");
      out.write("\t\t<table border=\"1\"><tr><td>\n");
      out.write("                            <table width=\"100%\" height=\"80%\" border=\"0\">\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td height=\"5\" >&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write("        <tr>\n");
      out.write("\t\t <td width=\"140\" height=\"20\" valign=\"top\"><div align=\"center\">Country<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td width=\"30\">&nbsp;</td>\n");
      out.write("         ");
      if (_jspx_meth_s_query_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    \t<td width=\"140\" valign=\"top\"><select name=\"s5\" class=\"combo\" onchange=\"getState();\" id=\"con\">\n");
      out.write("    \t  <option></option>\n");
      out.write("          ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </select>   </td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td  height=\"15\">&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top \"><div align=\"center\">State<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><div id=\"st\">\n");
      out.write("                <select name=\"selects\" class=\"combo\">\n");
      out.write("    \t  <option></option>\n");
      out.write("            </select>\n");
      out.write("            </div></td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td height=\"15\" >&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">City<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><div id=\"city\">\n");
      out.write("            <select name=\"selectct\" class=\"combo\">\n");
      out.write("    \t  <option></option>\n");
      out.write("          </select>\n");
      out.write("            </div></td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td height=\"15\" >&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write("<tr>\n");
      out.write("\t\t <td width=\"140\" height=\"20\" valign=\"top\"><div align=\"center\">Area Name<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td width=\"30\">&nbsp;</td>\n");
      out.write("         <td width=\"140\" valign=\"top\"><div id=\"ar\">\n");
      out.write("            <select name=\"selectar\" class=\"combo\">\n");
      out.write("    \t  <option></option>\n");
      out.write("                  </select>\n");
      out.write("            </div></td>\n");
      out.write("    \t</tr>    <td >&nbsp;</td>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">ZipCode<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><input type=\"text\" name=\"t3\" class=\"txtfld\"/></td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td height=\"15\" >&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Street Address<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><textarea name=\"ta1\"></textarea></td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td height=\"15\" >&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write("      </table>\n");
      out.write("         </td></tr>\n");
      out.write("                </table></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td colspan=\"3\" valign=\"top\">\n");
      out.write("\t<table border=\"1\"><tr><td>\n");
      out.write("                    <table width=\"100%\" height=\"100%\" border=\"0\">\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("\t\t <td height=\"5\" >&nbsp;<td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr><tr>\n");
      out.write("\t\t <td width=\"140\" height=\"20\" valign=\"top\"><div align=\"center\">Model_To_Buy<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td width=\"30\">&nbsp;</td>\n");
      out.write("    \t");
      if (_jspx_meth_s_query_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <td valign=\"top\" ><select name=\"s7\" class=\"combo\">\n");
      out.write("             <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </select>   </td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td  height=\"15\">&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top \"><div align=\"center\">Color_To_buy<span class=\"style2\">*</span></div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t");
      if (_jspx_meth_s_query_6(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <td valign=\"top\" ><select name=\"s8\" class=\"combo\">\n");
      out.write("             <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_6(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </select>   </td>\n");
      out.write("    \t</tr>    <td >&nbsp;</td>\n");
      out.write(" <tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Number_Of_Similar_Pro_owned</div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><input type=\"text\" name=\"t4\" class=\"txtfld\" /></td>\n");
      out.write("    \t</tr>\n");
      out.write("\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write(" <tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Number_Of_Our_Pro_owned</div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><input type=\"text\" name=\"t5\" class=\"txtfld\" /></td>\n");
      out.write("    \t</tr>\n");
      out.write("      <td >&nbsp;</td>\n");
      out.write("      <tr>\n");
      out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Model_owned</div></td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><input type=\"text\" name=\"t6\" class=\"txtfld\" /></td>\n");
      out.write("    \t</tr>\n");
      out.write("        <td >&nbsp;</td>\n");
      out.write("   <tr>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Follow_up_Date<span class=\"style2\">*</span></div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\" ><input type=\"text\" name=\"t7\" id=\"addcal1\" class=\"Datefld\"  /></td>\n");
      out.write("    <td><a href=\"javascript:showCal('proadd1')\"><img src=\"Images/calendar.jpg\"/></a></td></tr>\n");
      out.write("   <td >&nbsp;</td>\n");
      out.write("   <tr>\n");
      out.write("     <td  valign=\"top\"><div align=\"center\">Follow_Up_time</div></td>\n");
      out.write("      <td >&nbsp;</td>\n");
      out.write("    \t<td  valign=\"top\"><input type=\"text\" name=\"t8\"  class=\"Txtfld\" /></td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("\t\t <td height=\"5\" >&nbsp;</td>\n");
      out.write("    \t <td >&nbsp;</td>\n");
      out.write("    \t<td >&nbsp;</td>\n");
      out.write("    \t</tr>\n");
      out.write(" </table></td></tr></table>\t</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("</form>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Phone 1<span class=\"style2\">*</span></div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><input type=\"text\" name=\"t9\"  class=\"txtfld\"/></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><div align=\"center\">Phone 2</div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><input type=\"text\" name=\"t10\" class=\"txtfld\" /></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("    <tr>\n");
      out.write("  <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write(" <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("     <td  valign=\"top\"><div align=\"center\">Mobile</div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><input type=\"text\" name=\"t11\" class=\"txtfld\" /></td>\n");
      out.write("   <td >&nbsp;</td><td valign=\"top\"><div align=\"center\">Qualification</div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("    ");
      if (_jspx_meth_s_query_7(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <td valign=\"top\" ><select name=\"s9\" class=\"combo\">\n");
      out.write("      <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_7(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("  <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Email</div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><input type=\"text\" name=\"t12\"  class=\"txtfld\"/></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><div align=\"center\">Fax</div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><input type=\"text\" name=\"t13\" class=\"txtfld\" /></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("  <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Plan To Buy Date<span class=\"style2\">*</span></div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\" ><input onblur=\"getCal();\" type=\"text\" name=\"t14\" id=\"addcal2\" class=\"Datefld\"  /></td>\n");
      out.write("    <td ><a href=\"javascript:showCal('proadd2')\"><img src=\"Images/calendar.jpg\"/></a></td>\n");
      out.write("    <td  valign=\"top\"><div align=\"center\">Date Of Enquiry</div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td  valign=\"top\"><input type=\"text\" name=\"t15\" id=\"addcal3\"  class=\"Datefld\" /></td>\n");
      out.write("    <td></td>\n");
      out.write("  </tr>\n");
      out.write("    <tr>\n");
      out.write("  <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write(" <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("     <td valign=\"top\"><div align=\"center\">Assigned_By</div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("    ");
      if (_jspx_meth_s_query_8(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <td valign=\"top\" ><select name=\"s10\" class=\"combo\">\n");
      out.write("      <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_8(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>    </td>\n");
      out.write("   <td >&nbsp;</td><td valign=\"top\"><div align=\"center\">Created_By</div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("    ");
      if (_jspx_meth_s_query_9(_jspx_page_context))
        return;
      out.write("\n");
      out.write("     <td valign=\"top\" ><select name=\"s11\" class=\"combo\">\n");
      out.write("      <option></option>\n");
      out.write("      ");
      if (_jspx_meth_c_forEach_9(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write(" <td height=\"20\">&nbsp;</td>\n");
      out.write(" <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">NOTES</div></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><textarea name=\"ta2\"></textarea></td>\n");
      out.write("    <td >&nbsp;</td>\n");
      out.write(" <td valign=\"top\"><div align=\"center\">Income Group<span class=\"style2\">*</span></div></td>\n");
      out.write("     <td >&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><select name=\"s12\" class=\"combo\">\n");
      out.write("      <option></option>\n");
      out.write("      <option value=\"Grade A\">Grade A</option>\n");
      out.write("      <option value=\"Grade B\">Grade B</option>\n");
      out.write("      <option value=\"Grade C\">Grade C</option>\n");
      out.write("      <option value=\"Grade D\">Grade D</option>\n");
      out.write("    </select>    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write(" </tr>\n");
      out.write("  <tr>\n");
      out.write("  <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">\n");
      out.write("      <input type=\"reset\" value=\"Reset\" class=\"buttonSubmit\" />\n");
      out.write("    </div></td>\n");
      out.write("\n");
      out.write("    <td valign=\"top\" ><div align=\"center\">\n");
      out.write("      <input type=\"submit\" value=\"Submit\" class=\"buttonSubmit\"/>\n");
      out.write("    </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("  <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write(" </table>\n");
      out.write("\n");
      out.write("</td></tr></table>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("     </center>\n");
      out.write("<script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("              var o= new Validator(\"addprosform\");\n");
      out.write("                  o.addValidation(\"s1\",\"req\",\"Branch name can't left blank \");\n");
      out.write("                  o.addValidation(\"s3\",\"req\",\"Prospect type can't left blank \");\n");
      out.write("                  o.addValidation(\"s4\",\"req\",\"Industry name can't left blank \");\n");
      out.write("                  o.addValidation(\"t1\",\"req\",\"First name can't left blank \");\n");
      out.write("                  o.addValidation(\"s5\",\"req\",\"Country name can't left blank \");\n");
      out.write("                  o.addValidation(\"selects\",\"req\",\"State name can't left blank\");\n");
      out.write("                  o.addValidation(\"selectct\",\"req\",\"City name can't left blank\");\n");
      out.write("                  o.addValidation(\"selectar\",\"req\",\"Area name can't left blank\");\n");
      out.write("                  o.addValidation(\"t3\",\"req\",\"ZipCode can't left blank\");\n");
      out.write("                  o.addValidation(\"t3\",\"numeric\",\"ZipCode in numeric only\");\n");
      out.write("                  o.addValidation(\"ta1\",\"req\",\"Street address can't left blank\");\n");
      out.write("                  o.addValidation(\"s7\",\"req\",\"Model can't left blank\");\n");
      out.write("                  o.addValidation(\"s8\",\"req\",\"Color can't left blank\");\n");
      out.write("                  o.addValidation(\"t9\",\"req\",\"Phone1 can't left blank\");\n");
      out.write("                  o.addValidation(\"t9\",\"numeric\",\"Enter numeric value only\");\n");
      out.write("                  o.addValidation(\"t7\",\"req\",\"Follow up date can't left blank\");\n");
      out.write("                  o.addValidation(\"t14\",\"req\",\"Plan to buy date can't left blank\");\n");
      out.write("                  o.addValidation(\"s12\",\"req\",\"Income Group can't left blank\");\n");
      out.write("                  \n");
      out.write("\n");
      out.write("  </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_s_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_s_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_s_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_s_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_s_setDataSource_0.setParent(null);
    _jspx_th_s_setDataSource_0.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_s_setDataSource_0.setPassword("password");
    _jspx_th_s_setDataSource_0.setUrl("jdbc:mysql://localhost:3306/ase");
    _jspx_th_s_setDataSource_0.setUser("root");
    _jspx_th_s_setDataSource_0.setVar("ds");
    int _jspx_eval_s_setDataSource_0 = _jspx_th_s_setDataSource_0.doStartTag();
    if (_jspx_th_s_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_s_setDataSource_0);
      return true;
    }
    _jspx_tagPool_s_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_s_setDataSource_0);
    return false;
  }

  private boolean _jspx_meth_s_query_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_0.setPageContext(_jspx_page_context);
    _jspx_th_s_query_0.setParent(null);
    _jspx_th_s_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_0.setSql("select * from branch_master");
    _jspx_th_s_query_0.setVar("rs");
    int[] _jspx_push_body_count_s_query_0 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_0 = _jspx_th_s_query_0.doStartTag();
      if (_jspx_th_s_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_0.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("data");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Branch_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Branch_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('-');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Branch_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_1 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_1.setPageContext(_jspx_page_context);
    _jspx_th_s_query_1.setParent(null);
    _jspx_th_s_query_1.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_1.setSql("select * from status_master");
    _jspx_th_s_query_1.setVar("rs");
    int[] _jspx_push_body_count_s_query_1 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_1 = _jspx_th_s_query_1.doStartTag();
      if (_jspx_th_s_query_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_1.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("data");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"1\" >Active</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_2 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_2.setPageContext(_jspx_page_context);
    _jspx_th_s_query_2.setParent(null);
    _jspx_th_s_query_2.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_2.setSql("select * from prospect_type_master");
    _jspx_th_s_query_2.setVar("rs");
    int[] _jspx_push_body_count_s_query_2 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_2 = _jspx_th_s_query_2.doStartTag();
      if (_jspx_th_s_query_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_2.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("data");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Prospect_Type_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Prospect_Type_Desc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_3 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_3.setPageContext(_jspx_page_context);
    _jspx_th_s_query_3.setParent(null);
    _jspx_th_s_query_3.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_3.setSql("select * from industry_master");
    _jspx_th_s_query_3.setVar("rs");
    int[] _jspx_push_body_count_s_query_3 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_3 = _jspx_th_s_query_3.doStartTag();
      if (_jspx_th_s_query_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_3.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("data");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("          <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Industry_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Industry_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("      ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_4 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_4.setPageContext(_jspx_page_context);
    _jspx_th_s_query_4.setParent(null);
    _jspx_th_s_query_4.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_4.setSql("select * from country_name_master");
    _jspx_th_s_query_4.setVar("rs");
    int[] _jspx_push_body_count_s_query_4 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_4 = _jspx_th_s_query_4.doStartTag();
      if (_jspx_th_s_query_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_4.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("data");
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("              <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Country_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Country_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("          ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_5 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_5.setPageContext(_jspx_page_context);
    _jspx_th_s_query_5.setParent(null);
    _jspx_th_s_query_5.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_5.setSql("select * from model_master");
    _jspx_th_s_query_5.setVar("rs");
    int[] _jspx_push_body_count_s_query_5 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_5 = _jspx_th_s_query_5.doStartTag();
      if (_jspx_th_s_query_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_5.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_5);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("data");
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.model_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Model_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_6 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_6.setPageContext(_jspx_page_context);
    _jspx_th_s_query_6.setParent(null);
    _jspx_th_s_query_6.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_6.setSql("select * from color_master");
    _jspx_th_s_query_6.setVar("rs");
    int[] _jspx_push_body_count_s_query_6 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_6 = _jspx_th_s_query_6.doStartTag();
      if (_jspx_th_s_query_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_6[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_6.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_6.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_6);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_6 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_6.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_6.setParent(null);
    _jspx_th_c_forEach_6.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_6.setVar("data");
    int[] _jspx_push_body_count_c_forEach_6 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_6 = _jspx_th_c_forEach_6.doStartTag();
      if (_jspx_eval_c_forEach_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Color_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Color_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_6.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_6[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_6.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_6.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_6);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_7 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_7.setPageContext(_jspx_page_context);
    _jspx_th_s_query_7.setParent(null);
    _jspx_th_s_query_7.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_7.setSql("select * from qualification_master");
    _jspx_th_s_query_7.setVar("rs");
    int[] _jspx_push_body_count_s_query_7 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_7 = _jspx_th_s_query_7.doStartTag();
      if (_jspx_th_s_query_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_7[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_7.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_7.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_7);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_7 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_7.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_7.setParent(null);
    _jspx_th_c_forEach_7.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_7.setVar("data");
    int[] _jspx_push_body_count_c_forEach_7 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_7 = _jspx_th_c_forEach_7.doStartTag();
      if (_jspx_eval_c_forEach_7 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Qualification_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Qualification_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_7.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_7[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_7.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_7.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_7);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_8(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_8 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_8.setPageContext(_jspx_page_context);
    _jspx_th_s_query_8.setParent(null);
    _jspx_th_s_query_8.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_8.setSql("select * from employee_master");
    _jspx_th_s_query_8.setVar("rs");
    int[] _jspx_push_body_count_s_query_8 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_8 = _jspx_th_s_query_8.doStartTag();
      if (_jspx_th_s_query_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_8[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_8.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_8.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_8);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_8(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_8 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_8.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_8.setParent(null);
    _jspx_th_c_forEach_8.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_8.setVar("data");
    int[] _jspx_push_body_count_c_forEach_8 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_8 = _jspx_th_c_forEach_8.doStartTag();
      if (_jspx_eval_c_forEach_8 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('/');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Fname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Lname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_8.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_8[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_8.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_8.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_8);
    }
    return false;
  }

  private boolean _jspx_meth_s_query_9(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_9 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_9.setPageContext(_jspx_page_context);
    _jspx_th_s_query_9.setParent(null);
    _jspx_th_s_query_9.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_9.setSql("select * from employee_master");
    _jspx_th_s_query_9.setVar("rs");
    int[] _jspx_push_body_count_s_query_9 = new int[] { 0 };
    try {
      int _jspx_eval_s_query_9 = _jspx_th_s_query_9.doStartTag();
      if (_jspx_th_s_query_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_s_query_9[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_s_query_9.doCatch(_jspx_exception);
    } finally {
      _jspx_th_s_query_9.doFinally();
      _jspx_tagPool_s_query_var_sql_dataSource_nobody.reuse(_jspx_th_s_query_9);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_9(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_9 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_9.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_9.setParent(null);
    _jspx_th_c_forEach_9.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_9.setVar("data");
    int[] _jspx_push_body_count_c_forEach_9 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_9 = _jspx_th_c_forEach_9.doStartTag();
      if (_jspx_eval_c_forEach_9 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('/');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Fname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Lname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_9.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_9[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_9.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_9.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_9);
    }
    return false;
  }
}
