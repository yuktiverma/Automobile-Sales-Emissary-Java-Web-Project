package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Addscheme_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_sql_dataSource_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_core_forEach_var_items;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_sql_dataSource_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_core_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.release();
    _jspx_tagPool_sql_query_var_sql_dataSource_nobody.release();
    _jspx_tagPool_core_forEach_var_items.release();
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html><head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1252\"/>\n");
      out.write("<title>ADD SCHEME PAGE</title>\n");
      out.write("<script type=\"text/javascript\" src=\"JS/cal2.js\" language=\"javascript\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"JS/cal_conf2.js\" language=\"javascript\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"JS//gen_validatorv4.js\" language=\"javascript\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/stylesheet.css\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("        <form name=\"addscheme\" action=\"addscheme.do\">\n");
      out.write("\n");
      out.write("            <table style=\"border:0px solid #333;\"  cellpadding=\"0\" cellspacing=\"0\" width=\"440\">\n");
      out.write("                  <!--DWLayoutTable-->\n");
      out.write("\n");
      out.write("                  <tbody><tr>\n");
      out.write("                    <td width=\"50\" height=\"40\">&nbsp;</td>\n");
      out.write("                    <td colspan=\"3\" valign=\"top\" ><div class=\"style1\" align=\"center\">ADD SCHEME</div></td>\n");
      out.write("      <td width=\"50\">&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"22\">&nbsp;</td>\n");
      out.write("                      <td width=\"150\" valign=\"top\"><div align=\"center\">Scheme For<span style=\"color: #ff0000\">*</span> </div></td>\n");
      out.write("      <td width=\"40\">&nbsp;</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("           ");
      if (_jspx_meth_sql_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("          <td width=\"150\" valign=\"top\"><label>\n");
      out.write("\n");
      out.write("\n");
      out.write("           <select name=\"schmfor\" class=\"combo\">\n");
      out.write("            <option></option>\n");
      out.write("            ");
      if (_jspx_meth_core_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("          </select>\n");
      out.write("                      </label></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"22\">&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"22\">&nbsp;</td>\n");
      out.write("                      <td valign=\"top\"> <div align=\"center\">Discount Percent<span style=\"color: #ff0000\">*</span> </div></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td valign=\"top\"><label>\n");
      out.write("                        <input type=\"text\" name=\"discper\" class=\"txtfld\">\n");
      out.write("                      </label></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"19\">&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"22\">&nbsp;</td>\n");
      out.write("                      <td valign=\"top\"><div align=\"center\">Source Id<span style=\"color: #ff0000\">*</span> </div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("\n");
      out.write("             ");
      if (_jspx_meth_sql_query_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                <td valign=\"top\"><label>\n");
      out.write("        <select name=\"srcid\" class=\"combo\">\n");
      out.write("            <option></option>\n");
      out.write("            ");
      if (_jspx_meth_core_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </select>\n");
      out.write("                      </label>    </td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"21\">&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"20\">&nbsp;</td>\n");
      out.write("                      <td valign=\"top\"><div align=\"center\">Model Id<span style=\"color: #ff0000\">*</span> </div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("                      \n");
      out.write("                \n");
      out.write("                    ");
      if (_jspx_meth_sql_query_2(_jspx_page_context))
        return;
      out.write("      \n");
      out.write("                    <td valign=\"top\">\n");
      out.write("                        <select name=\"modid\" class=\"combo\">\n");
      out.write("                            <option></option>\n");
      out.write("                          ");
      if (_jspx_meth_core_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                        </select>    </td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"25\">&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"22\"></td>\n");
      out.write("                      <td valign=\"top\"><div align=\"center\">Color Id<span style=\"color: #ff0000\">*</span> </div></td>\n");
      out.write("      <td></td>\n");
      out.write("                      <td valign=\"top\"><label>\n");
      out.write("             ");
      if (_jspx_meth_sql_query_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("             <select name=\"colid\" class=\"combo\">\n");
      out.write("                 <option></option>\n");
      out.write("                 ");
      if (_jspx_meth_core_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("        </select>\n");
      out.write("                      </label></td>\n");
      out.write("      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"21\"></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"20\"></td>\n");
      out.write("                      <td valign=\"top\"><div align=\"center\">From Date<span style=\"color: #ff0000\">*</span> </div></td>\n");
      out.write("      <td></td>\n");
      out.write("                      <td valign=\"top\"><input type=\"text\" name=\"fdate\" class=\"txtfld\">\n");
      out.write("                          <a href=\"javascript:showCal('calender2')\"><img src=\"Images/calender.jpg\"></a></td>\n");
      out.write("      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"20\"></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"20\"></td>\n");
      out.write("                      <td valign=\"top\"><div align=\"center\">To Date<span style=\"color: #ff0000\">*</span> </div></td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td valign=\"top\"><label><a href=\"javascript:showCal('calender2')\"></a>\n");
      out.write("                          <input type=\"text\" name=\"tdate\" class=\"txtfld\" >\n");
      out.write("                          <a href=\"javascript:showCal('calender3')\"><img src=\"Images/calender.jpg\"></a></label></td>\n");
      out.write("                      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"20\"></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td height=\"20\"></td>\n");
      out.write("                      <td valign=\"top\"><div align=\"center\">\n");
      out.write("                        <input name=\"Submit\" type=\"submit\" class=\"buttonSubmit\" value=\"ADD\">\n");
      out.write("                      </div></td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td valign=\"top\"><label><a href=\"javascript:showCal('calender3')\"></a>\n");
      out.write("                          <input name=\"Submit2\" value=\"RESET\"  class=\"buttonSubmit\" type=\"reset\">\n");
      out.write("                      </label></td>\n");
      out.write("                      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                          <tr>\n");
      out.write("                      <td height=\"38\"></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td>&nbsp;</td>\n");
      out.write("                      <td></td>\n");
      out.write("                    </tr>\n");
      out.write("  </tbody>\n");
      out.write("          </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("        var o= new Validator(\"addscheme\");\n");
      out.write("    o.addValidation(\"schmfor\",\"req\",\"can't left blank\");    \n");
      out.write("    o.addValidation(\"discper\",\"req\",\"can't left blank\");\n");
      out.write("    o.addValidation(\"srcid\",\"req\",\"can't left blank\");\n");
      out.write("    o.addValidation(\"modid\",\"req\",\"can't left blank\");\n");
      out.write("    o.addValidation(\"colid\",\"req\",\"can't left blank\");\n");
      out.write("    o.addValidation(\"fdate\",\"req\",\"can't left blank\");\n");
      out.write("    o.addValidation(\"tdate\",\"req\",\"can't left blank\");\n");
      out.write("\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body></html>");
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

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_sql_setDataSource_0.setPassword("password");
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:mysql://localhost:3306/ase");
    _jspx_th_sql_setDataSource_0.setUser("root");
    _jspx_th_sql_setDataSource_0.setVar("ds");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }

  private boolean _jspx_meth_sql_query_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_0.setParent(null);
    _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_0.setSql("select * from industry_master");
    _jspx_th_sql_query_0.setVar("rs");
    int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
      if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_0.doFinally();
      _jspx_tagPool_sql_query_var_sql_dataSource_nobody.reuse(_jspx_th_sql_query_0);
    }
    return false;
  }

  private boolean _jspx_meth_core_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  core:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_core_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_core_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_core_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_core_forEach_0.setParent(null);
    _jspx_th_core_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_core_forEach_0.setVar("data");
    int[] _jspx_push_body_count_core_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_core_forEach_0 = _jspx_th_core_forEach_0.doStartTag();
      if (_jspx_eval_core_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Industry_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Industry_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_core_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_core_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_core_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_core_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_core_forEach_0.doFinally();
      _jspx_tagPool_core_forEach_var_items.reuse(_jspx_th_core_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_sql_query_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_1 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_1.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_1.setParent(null);
    _jspx_th_sql_query_1.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_1.setSql("select * from source_master");
    _jspx_th_sql_query_1.setVar("rs");
    int[] _jspx_push_body_count_sql_query_1 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_1 = _jspx_th_sql_query_1.doStartTag();
      if (_jspx_th_sql_query_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_1.doFinally();
      _jspx_tagPool_sql_query_var_sql_dataSource_nobody.reuse(_jspx_th_sql_query_1);
    }
    return false;
  }

  private boolean _jspx_meth_core_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  core:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_core_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_core_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_core_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_core_forEach_1.setParent(null);
    _jspx_th_core_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_core_forEach_1.setVar("data");
    int[] _jspx_push_body_count_core_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_core_forEach_1 = _jspx_th_core_forEach_1.doStartTag();
      if (_jspx_eval_core_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("           <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Source_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Source_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("           ");
          int evalDoAfterBody = _jspx_th_core_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_core_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_core_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_core_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_core_forEach_1.doFinally();
      _jspx_tagPool_core_forEach_var_items.reuse(_jspx_th_core_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_sql_query_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_2 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_2.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_2.setParent(null);
    _jspx_th_sql_query_2.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_2.setSql("select * from model_master");
    _jspx_th_sql_query_2.setVar("rs");
    int[] _jspx_push_body_count_sql_query_2 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_2 = _jspx_th_sql_query_2.doStartTag();
      if (_jspx_th_sql_query_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_2.doFinally();
      _jspx_tagPool_sql_query_var_sql_dataSource_nobody.reuse(_jspx_th_sql_query_2);
    }
    return false;
  }

  private boolean _jspx_meth_core_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  core:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_core_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_core_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_core_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_core_forEach_2.setParent(null);
    _jspx_th_core_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_core_forEach_2.setVar("data");
    int[] _jspx_push_body_count_core_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_core_forEach_2 = _jspx_th_core_forEach_2.doStartTag();
      if (_jspx_eval_core_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("                          <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Model_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Model_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                          ");
          int evalDoAfterBody = _jspx_th_core_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_core_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_core_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_core_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_core_forEach_2.doFinally();
      _jspx_tagPool_core_forEach_var_items.reuse(_jspx_th_core_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_sql_query_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_3 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_3.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_3.setParent(null);
    _jspx_th_sql_query_3.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_3.setSql("select * from color_master");
    _jspx_th_sql_query_3.setVar("rs");
    int[] _jspx_push_body_count_sql_query_3 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_3 = _jspx_th_sql_query_3.doStartTag();
      if (_jspx_th_sql_query_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_3.doFinally();
      _jspx_tagPool_sql_query_var_sql_dataSource_nobody.reuse(_jspx_th_sql_query_3);
    }
    return false;
  }

  private boolean _jspx_meth_core_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  core:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_core_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_core_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_core_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_core_forEach_3.setParent(null);
    _jspx_th_core_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_core_forEach_3.setVar("data");
    int[] _jspx_push_body_count_core_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_core_forEach_3 = _jspx_th_core_forEach_3.doStartTag();
      if (_jspx_eval_core_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                          <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Color_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Color_Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                          ");
          int evalDoAfterBody = _jspx_th_core_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_core_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_core_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_core_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_core_forEach_3.doFinally();
      _jspx_tagPool_core_forEach_var_items.reuse(_jspx_th_core_forEach_3);
    }
    return false;
  }
}
