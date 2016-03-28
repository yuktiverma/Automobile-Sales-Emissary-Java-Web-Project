package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Delete_005fCase_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("    var xhro;\n");
      out.write("    function getCase()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        var v=document.getElementById(\"case\").value;\n");
      out.write("        \n");
      out.write("        xhro=new XMLHttpRequest();\n");
      out.write("        xhro.onreadystatechange=myfun;\n");
      out.write("        xhro.open(\"get\",\"Delete_Case_1.jsp?did=\"+v+\"\",true);\n");
      out.write("        xhro.send();\n");
      out.write("    }\n");
      out.write("    function myfun()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        if(xhro.readyState==4)\n");
      out.write("        {\n");
      out.write("            document.getElementById(\"caseform\").innerHTML=xhro.responseText;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Delete Case</title>\n");
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write("\n");
      out.write(".style2 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"JS/cal2.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"JS/cal_conf2.js\"></script>\n");
      out.write("<script src=\"JS/gen_validatorv4.js\" type=\"text/javascript\" language=\"javascript\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/stylesheet.css\"/>\n");
      out.write("<script type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          \n");
      out.write("    <center>\n");
      out.write("        <div id=\"caseform\">\n");
      out.write("            <form name=\"delcase\"id=\"delcaseform\" action=\"deletecase.do\" >\n");
      out.write("\n");
      out.write("            <table border=\"1\"><tr><td>\n");
      out.write("<table width=\"630\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td width=\"70\" height=\"50\">&nbsp;</td>\n");
      out.write("    <td colspan=\"4\" valign=\"top\" ><div align=\"center\" class=\"style1\">Delete Case</div></td>\n");
      out.write("    <td width=\"70\">&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td width=\"150\" valign=\"top\">&nbsp;</td>\n");
      out.write("    <td width=\"40\">&nbsp;</td>\n");
      out.write("    <td width=\"150\" valign=\"top\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\" ><div align=\"center\">Case ID<span class=\"style2\">*</span></div></td>\n");
      out.write("     ");
      if (_jspx_meth_s_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><select onchange=\"getCase();\" id=\"case\" name=\"select\" class=\"combo\">\n");
      out.write("            <option value=\"select\">--select--</option>\n");
      out.write("             ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("            </select></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("   <form name=\"copy\">\n");
      out.write("<tr>\n");
      out.write("  <td height=\"20\">&nbsp;</td>\n");
      out.write("  <td colspan=\"4\" valign=\"top\" > <div align=\"center\"class=\"style1\"> Prospect Details </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("<tr>\n");
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
      out.write("   <tr>\n");
      out.write("    <td height=\"375\">&nbsp;</td>\n");
      out.write("    <td colspan=\"4\" valign=\"top\">\n");
      out.write("\t\t<table border=\"1\"><tr><td>\n");
      out.write("                            <table width=\"550\" height=\"100%\" border=\"0\">\n");
      out.write("                                <td height=\"10\">&nbsp;</td>\n");
      out.write("\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">First Name</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"> <input type=\"text\" name=\"t1\" class=\"txtfld\" readonly />\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"15\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Last Name</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"> <input type=\"text\" name=\"t2\" class=\"txtfld\" readonly />\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    ");
      out.write("\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Phone</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"> <input type=\"text\" name=\"t3\" class=\"txtfld\" readonly />\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Email</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"> <input type=\"text\" name=\"t4\" class=\"txtfld\" readonly  />\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("   <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("</tr>\n");
      out.write(" <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Model To Buy</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"> <input type=\"text\" name=\"t5\" class=\"txtfld\" readonly />\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">City</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"> <input type=\"text\" name=\"t6\" class=\"txtfld\" readonly />\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("     </tr>\n");
      out.write("   <tr>\n");
      out.write("       <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><div align=\"center\">Street Address</div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td valign=\"top\"><textarea name=\"textarea\" name=\"ta1\" readonly ></textarea>\n");
      out.write("    </td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("   </table></td></tr></table></td>\n");
      out.write("  </tr>\n");
      out.write("  </form>\n");
      out.write("   <tr>\n");
      out.write("        <td>&nbsp;</td>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("       <td valign=\"top\"><div align=\"center\">\n");
      out.write("      <input type=\"submit\" name=\"Delete\" value=\"Delete\"  onclick=\"fun(); return false\" class=\"buttonSubmit\" />\n");
      out.write("    </div></td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"20\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("  </table>\n");
      out.write("                    </td></tr></table>\n");
      out.write("        </form>\n");
      out.write("        </div></center>\n");
      out.write("          <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("              var o= new Validator(\"delcaseform\");\n");
      out.write("                  o.addValidation(\"select\",\"req\",\"Can't left blank Case ID\");\n");
      out.write("                   </script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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
    _jspx_th_s_query_0.setSql("select Case_Id from case_detail_master");
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
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Case_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Case_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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
}
