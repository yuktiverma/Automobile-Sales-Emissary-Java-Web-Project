package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Edit_005fCase_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_s_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C+//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      if (_jspx_meth_s_query_0(_jspx_page_context))
        return;
      out.write('\n');
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
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
    _jspx_th_s_query_0.setSql((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("select * from case_detail_master where Case_Id='${param['cid']}'", java.lang.String.class, (PageContext)_jspx_page_context, null));
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
          out.write("<html>\n");
          out.write("    <head>\n");
          out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
          out.write("       <title>Add case</title>\n");
          out.write("<style type=\"text/css\">\n");
          out.write("<!--\n");
          out.write(".style1 {\n");
          out.write("\tfont-size: 23px;\n");
          out.write("\tfont-weight: bold;\n");
          out.write("}\n");
          out.write(".style2 {color: #FF0000}\n");
          out.write("-->\n");
          out.write("</style>\n");
          out.write("\n");
          out.write("          <script type=\"text/javascript\" src=\"JS/cal2.js\"></script>\n");
          out.write("          <script type=\"text/javascript\" src=\"JS/cal_conf2.js\"></script>\n");
          out.write("          <script src=\"JS/gen_validatorv4.js\" type=\"text/javascript\" language=\"javascript\"></script>\n");
          out.write("          <link rel=\"stylesheet\" href=\"CSS/stylesheet.css\"/>\n");
          out.write("</head>\n");
          out.write("\n");
          out.write("<body>\n");
          out.write("    <center>\n");
          out.write("        <form  method=\"get\" name=\"updatecase\" action=\"editaction.do\">\n");
          out.write("        \n");
          out.write("\n");
          out.write("                    <table width=\"730\" cellpadding=\"0\" cellspacing=\"0\" >\n");
          out.write("\n");
          out.write("  <tr>\n");
          out.write("    <td width=\"20\" height=\"40\">&nbsp;</td>\n");
          out.write("    <td colspan=\"7\" valign=\"top\" >\n");
          out.write("    <p align=\"center\" class=\"style1\">Case Detail</p></td>\n");
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
          out.write("<tr>\n");
          out.write("    <td height=\"20\">&nbsp;</td>\n");
          out.write("     <td </td>\n");
          out.write("     <td >&nbsp;</td>\n");
          out.write("     <td valign=\"top\"><div align=\"center\">Case Id<span class=\"style2\">*</span></div></td>\n");
          out.write("      \n");
          out.write("   <td >&nbsp;</td>\n");
          out.write("\n");
          out.write("   <td valign=\"top\" ><input  name=\"t10\" type=\"text\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Case_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"txtfld\" readonly/>\n");
          out.write("\n");
          out.write("           </td>\n");
          out.write("\n");
          out.write("    <td >&nbsp;</td>\n");
          out.write("     <td >&nbsp;</td>\n");
          out.write("    <td>&nbsp;</td>\n");
          out.write("  </tr>\n");
          out.write("\n");
          out.write("  <tr>\n");
          out.write("    <td height=\"25\">&nbsp;</td>\n");
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
          out.write("\n");
          out.write("\n");
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
          out.write("\t\t <td width=\"140\" height=\"20\" valign=\"top\"><div align=\"center\">Model Id<span class=\"style2\">*</span></div></td>\n");
          out.write("    \t         <td width=\"30\">&nbsp;</td>\n");
          out.write("                      \t<td width=\"140\" valign=\"top\">\n");
          out.write("                            <input type=\"text\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Model_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"  name=\"t9\" class=\"txtfld\" readonly/>\n");
          out.write("            </td>\n");
          out.write("    \t</tr>\n");
          out.write("\n");
          out.write("\t\t<tr>\n");
          out.write("\t\t <td  height=\"15\">&nbsp;</td>\n");
          out.write("    \t <td >&nbsp;</td>\n");
          out.write("    \t<td >&nbsp;</td>\n");
          out.write("    \t</tr>\n");
          out.write("\n");
          out.write("\t\t<tr>\n");
          out.write("\t\t <td   height=\"20\"valign=\"top \"><div align=\"center\">Color Id<span class=\"style2\">*</span></div></td>\n");
          out.write("    \t         <td >&nbsp;</td>\n");
          out.write("                 <td  valign=\"top\"><input type=\"text\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Color_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" name=\"t8\" class=\"txtfld\" readonly/>  </td>\n");
          out.write("    \t</tr>\n");
          out.write("\n");
          out.write("\t\t<tr>\n");
          out.write("\t\t <td height=\"15\" >&nbsp;</td>\n");
          out.write("    \t <td >&nbsp;</td>\n");
          out.write("    \t<td >&nbsp;</td>\n");
          out.write("    \t</tr>\n");
          out.write("\n");
          out.write("\t\t<tr>\n");
          out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">State Id<span class=\"style2\">*</span></div></td>\n");
          out.write("    \t         <td >&nbsp;</td>\n");
          out.write("                 ");
          if (_jspx_meth_s_query_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("    \t<td  valign=\"top\"><select name=\"select3\" class=\"combo\">\n");
          out.write("    \t  <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.State_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.State_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("         ");
          if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("        </select>   </td>\n");
          out.write("    \t</tr>\n");
          out.write("\n");
          out.write("\t\t<tr>\n");
          out.write("\t\t <td height=\"15\" >&nbsp;</td>\n");
          out.write("    \t <td >&nbsp;</td>\n");
          out.write("    \t<td >&nbsp;</td>\n");
          out.write("    \t</tr>\n");
          out.write("<tr>\n");
          out.write("\n");
          out.write("    <td width=\"140\" height=\"20\" valign=\"top\"><div align=\"center\">Status Id<span class=\"style2\">*</span></div></td>\n");
          out.write("    <td width=\"30\">&nbsp;</td>\n");
          out.write("    <td width=\"140\" valign=\"top\"><input type=\"text\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Status_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"txtfld\" readonly>  </td>\n");
          out.write("    \t</tr>    <td >&nbsp;</td>\n");
          out.write("\t\t<tr>\n");
          out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Predicted Close Date</div></td>\n");
          out.write("    \t <td >&nbsp;</td>\n");
          out.write("         <td  valign=\"top\" ><input type=\"text\" name=\"t1\" id=\"addcal1\" class=\"Datefld\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Predicted_Close_Date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" /></td>\n");
          out.write("    <td><a href=\"javascript:showCal('caseadd1')\"><img src=\"Images/calendar.jpg\"/></a></td>\n");
          out.write("    \t</tr>\n");
          out.write("        <tr>\n");
          out.write("         <td height=\"15\" >&nbsp;</td>\n");
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
          out.write("\t\t <td width=\"140\" height=\"20\" valign=\"top\"><div align=\"center\">Follow Up Action Id<span class=\"style2\">*</span></div></td>\n");
          out.write("    \t");
          if (_jspx_meth_s_query_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                 <td width=\"30\">&nbsp;</td>\n");
          out.write("    \t<td width=\"140\" valign=\"top\"><select name=\"select5\" class=\"combo\">\n");
          out.write("    \t  <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Follow_Up_Action_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Follow_Up_Action_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("           ");
          if (_jspx_meth_c_forEach_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
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
          out.write("\n");
          out.write(" <tr>\n");
          out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Follow Up Date<span class=\"style2\">*</span></div></td>\n");
          out.write("    \t <td >&nbsp;</td>\n");
          out.write("         <td  valign=\"top\" ><input type=\"text\" name=\"t2\" id=\"addcal3\" class=\"Datefld\"  value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Follow_Up_Date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" readonly /></td>\n");
          out.write("    <td></td>\n");
          out.write("    \t</tr>\n");
          out.write("\n");
          out.write("    <td >&nbsp;</td>\n");
          out.write(" <tr>\n");
          out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Next Plan Of Action Id<span class=\"style2\">*</span></div></td>\n");
          out.write("    \t ");
          if (_jspx_meth_s_query_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                 <td >&nbsp;</td>\n");
          out.write("    \t<td  width=\"140\" valign=\"top\"><select name=\"select6\" class=\"combo\">\n");
          out.write("    \t  <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.NextPlanOf_Action_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.NextPlanOf_Action_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("          ");
          if (_jspx_meth_c_forEach_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("\n");
          out.write("        </select> </td>\n");
          out.write("    \t</tr>\n");
          out.write("      <td >&nbsp;</td>\n");
          out.write("      <tr>\n");
          out.write("\t\t <td   height=\"20\"valign=\"top\"><div align=\"center\">Next Follow Up Date<span class=\"style2\">*</span></div></td>\n");
          out.write("    \t <td >&nbsp;</td>\n");
          out.write("    \t<td  valign=\"top\" ><input type=\"text\" name=\"t3\" id=\"addcal3\" class=\"Datefld\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.NextFollowUp_Date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" /></td>\n");
          out.write("    <td><a href=\"javascript:showCal('caseadd3')\"><img src=\"Images/calendar.jpg\"/></a></td>\n");
          out.write("    \t</tr>\n");
          out.write("        <td >&nbsp;</td>\n");
          out.write("   <tr>\n");
          out.write("    <td valign=\"top\"><div align=\"center\">Actual Close Date</div></td>\n");
          out.write("    <td >&nbsp;</td>\n");
          out.write("    <td valign=\"top\" ><input type=\"text\" name=\"t4\" id=\"addcal4\" class=\"Datefld\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Actual_Close_Date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" /></td>\n");
          out.write("    <td><a href=\"javascript:showCal('caseadd4')\"><img src=\"Images/calendar.jpg\"/></a></td></tr>\n");
          out.write("   <td >&nbsp;</td>\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write(" </table></td></tr></table>\t</td>\n");
          out.write("    <td>&nbsp;</td>\n");
          out.write("  </tr>\n");
          out.write("     <tr>\n");
          out.write("    <td height=\"25\">&nbsp;</td>\n");
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
          out.write(" <tr>\n");
          out.write("    <td height=\"20\">&nbsp;</td>\n");
          out.write("    <td valign=\"top\"><div align=\"center\">NOTES</div></td>\n");
          out.write("    <td >&nbsp;</td>\n");
          out.write("    <td valign=\"top\"><textarea  name=\"ta1\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Notes}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</textarea></td>\n");
          out.write("    <td >&nbsp;</td>\n");
          out.write(" <td valign=\"top\"><div align=\"center\">Created By<span class=\"style2\">*</span></div></td>\n");
          out.write("  ");
          if (_jspx_meth_s_query_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write(" <td >&nbsp;</td>\n");
          out.write("    <td valign=\"top\"><select name=\"select7\" class=\"combo\">\n");
          out.write("\n");
          out.write("      <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Created_By}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Created_By}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("       ");
          if (_jspx_meth_c_forEach_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("\n");
          out.write("    </select>    </td>\n");
          out.write("    <td>&nbsp;</td>\n");
          out.write(" </tr>\n");
          out.write("  <tr>\n");
          out.write("  <td height=\"20\">&nbsp;</td>\n");
          out.write("    <td>&nbsp;</td>\n");
          out.write("    <td>&nbsp;</td>\n");
          out.write("    <td>&nbsp;</td>\n");
          out.write("    <td>&nbsp;</td>\n");
          out.write("    <td valign=\"top\"><div align=\"center\"><input type=\"reset\" value=\"Reset\" class=\"buttonSubmit\" />\n");
          out.write("    </div></td>\n");
          out.write("   <td>&nbsp;</td>\n");
          out.write("    <td valign=\"top\" ><div align=\"center\">\n");
          out.write("      <input type=\"submit\" value=\"Update\" onclick=\"fun(); return false\" class=\"buttonSubmit\"/>\n");
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
          out.write("\n");
          out.write("    </form>\n");
          out.write("\n");
          out.write("     <script type=\"text/javascript\" language=\"javascript\">\n");
          out.write("              var o= new Validator(\"addcase\");\n");
          out.write("                 o.addValidation(\"select\",\"req\",\"Can't left blank Prospect Id\");\n");
          out.write("                 o.addValidation(\"select1\",\"req\",\"Can't left blank Model Id\");\n");
          out.write("                 o.addValidation(\"select2\",\"req\",\"Can't left blank Color Id\");\n");
          out.write("                 o.addValidation(\"select3\",\"req\",\"Can't left blank State Id\");\n");
          out.write("                 o.addValidation(\"select4\",\"req\",\"Can't left blank Status Id\");\n");
          out.write("                 o.addValidation(\"select5\",\"req\",\"Can't left blank Follow Up Action Id\");\n");
          out.write("                 o.addValidation(\"select6\",\"req\",\"Can't left blank Next Plan Of Action Id\");\n");
          out.write("                 o.addValidation(\"select7\",\"req\",\"Can't left blank Created By\");\n");
          out.write("                 o.addValidation(\"t2\",\"req\",\"Can't left blank Follow Up Date\");\n");
          out.write("                 o.addValidation(\"t3\",\"req\",\"Can't left blank Next Follow Up Date\");\n");
          out.write("                                  \n");
          out.write("  </script></center>\n");
          out.write("    </body>\n");
          out.write("</html>\n");
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

  private boolean _jspx_meth_s_query_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_1 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_1.setPageContext(_jspx_page_context);
    _jspx_th_s_query_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_s_query_1.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_1.setSql("select * from state_master");
    _jspx_th_s_query_1.setVar("rs5");
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

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs5.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("data5");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data5.State_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data5.State_Desc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
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

  private boolean _jspx_meth_s_query_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_2 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_2.setPageContext(_jspx_page_context);
    _jspx_th_s_query_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_s_query_2.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_2.setSql("select * from action_taken_master");
    _jspx_th_s_query_2.setVar("rs1");
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

  private boolean _jspx_meth_c_forEach_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs1.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("data1");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data1.Action_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data1.Action_Desc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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

  private boolean _jspx_meth_s_query_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_3 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_3.setPageContext(_jspx_page_context);
    _jspx_th_s_query_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_s_query_3.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_3.setSql("select * from action_taken_master");
    _jspx_th_s_query_3.setVar("rs2");
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

  private boolean _jspx_meth_c_forEach_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs2.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("data2");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data2.Action_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data2.Action_Desc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
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

  private boolean _jspx_meth_s_query_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_4 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_4.setPageContext(_jspx_page_context);
    _jspx_th_s_query_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_s_query_4.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_4.setSql("select * from employee_master");
    _jspx_th_s_query_4.setVar("rs3");
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

  private boolean _jspx_meth_c_forEach_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs3.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("data3");
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data3.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data3.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
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
}
