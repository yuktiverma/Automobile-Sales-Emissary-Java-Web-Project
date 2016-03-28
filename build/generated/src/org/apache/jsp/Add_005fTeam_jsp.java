package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Add_005fTeam_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      if (_jspx_meth_s_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html >\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Add Team Page</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write("\n");
      out.write(".style2 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<script src=\"JS/gen_validatorv4.js\" type=\"text/javascript\" language=\"javascript\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/stylesheet.css\"/>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div style=\"width: 648px ; height:350px; background: white;\">\n");
      out.write("    <center>\n");
      out.write("        <form name=\"addteam\" action=\"addteam.do\" method=\"get\">\n");
      out.write("\n");
      out.write("            <table border=\"1\"><tr><td>\n");
      out.write("<table width=\"480\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td width=\"70\" height=\"40\">&nbsp;</td>\n");
      out.write("    <td colspan=\"3\" valign=\"top\" ><div align=\"center\" class=\"style1\">Enter Team Details </div></td>\n");
      out.write("    <td width=\"70\">&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\" ><div align=\"left\" class=\"whfont\">Branch Name </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("    <td valign=\"top\"> <select name=\"selectb\"  class=\"combo\">\n");
      out.write("             <option value=\"select\">--Select--</option>\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"10\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\" class=\"whfont\">Team Type& Model <span class=\"style2\">*</span>  </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <td valign=\"top\"> <select name=\"selecttt\"  class=\"combo\">\n");
      out.write("             <option value=\"select\">--Select--</option>\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("    <td height=\"10\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\" class=\"whfont\">Team Manager Id <span class=\"style2\">*</span>  </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    ");
      if (_jspx_meth_s_query_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <td valign=\"top\"> <select name=\"selectmid\"  class=\"combo\">\n");
      out.write("             <option value=\"select\">--Select--</option>\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"10\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\" class=\"whfont\">Team Leader Id <span class=\"style2\">*</span>  </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    ");
      if (_jspx_meth_s_query_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <td valign=\"top\"> <select name=\"selectlid\"  class=\"combo\">\n");
      out.write("             <option value=\"select\">--Select--</option>\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"10\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\" class=\"whfont\">Team Name <span class=\"style2\">*</span> </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><input type=\"text\" name=\"t3\" class=\"txtfld\" /></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"10\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\" class=\"whfont\">Status Id  </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <td valign=\"top\"> <select name=\"selectst\"  class=\"combo\">\n");
      out.write("             <option value=\"select\">--Select--</option>\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </select>\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"10\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td ></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\"><input type=\"reset\" value=\"Reset\" class=\"buttonSubmit\" />\n");
      out.write("      <input type=\"submit\" name=\"Submit2\" value=\"Submit\"  onclick=\"fun(); return false\" class=\"buttonSubmit\" />\n");
      out.write("    </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("</table>\n");
      out.write("                    </td></tr></table>\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("<script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("              var o= new Validator(\"addteam\");\n");
      out.write("\n");
      out.write("                  o.addValidation(\"t3\",\"req\",\"Can't left blank  Team Name\");\n");
      out.write("                  o.addValidation(\"selectlid\",\"req\",\"Can't left Blank Leader Id\");\n");
      out.write("\n");
      out.write("  </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
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
    _jspx_th_s_query_1.setSql("select * from teamtype_master");
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
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Team_Type_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Team_Type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Team_TypeName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" </option>\n");
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
    _jspx_th_s_query_2.setSql("select * from employee_master");
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
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(": ,");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Fname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Lname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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
    _jspx_th_s_query_3.setSql("select * from employee_master");
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
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(": ,");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Fname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Emp_Lname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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

  private boolean _jspx_meth_s_query_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_s_query_4 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_s_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_s_query_4.setPageContext(_jspx_page_context);
    _jspx_th_s_query_4.setParent(null);
    _jspx_th_s_query_4.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ds}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_s_query_4.setSql("select * from status_master");
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
          out.write("                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Status_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Status_Desc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" </option>\n");
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
