package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Deleteorder_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; \"/>\n");
      out.write("<title>Delete Order</title>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" language=\"javascript\" src=\"JS/cal2.js\"></script>\n");
      out.write("<script type=\"text/javascript\" language=\"javascript\" src=\"JS/cal_conf2.js\"></script>\n");
      out.write("<script type=\"text/javascript\" language=\"javascript\" src=\"JS/gen_validatorv4.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"CSS/stylesheet.css\"/>\n");
      out.write("\n");
      out.write("<script  type=\"text/javascript\" language=\"javascript\">\n");
      out.write("    var xhro;\n");
      out.write("    function getOrder()\n");
      out.write("    {\n");
      out.write("        var o= document.getElementById(\"ordid\").value;\n");
      out.write("        xhro=new XMLHttpRequest();\n");
      out.write("        xhro.onreadystatechange=myfun;\n");
      out.write("        xhro.open(\"get\",\"Deleteorder_1.jsp?oid=\"+o+\"\",true);\n");
      out.write("        xhro.send();\n");
      out.write("\n");
      out.write("    }\n");
      out.write("        function myfun()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        if(xhro.readyState==4)\n");
      out.write("        {\n");
      out.write("            document.getElementById(\"delorder\").innerHTML=xhro.responseText;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("        <div id=\"delorder\">\n");
      out.write("        <form name=\"deleteorder\" action=\"deleterorder.do\">\n");
      out.write("\n");
      out.write("                <table width=\"440\" style=\"border:1px solid#333\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                  <!--DWLayoutTable-->\n");
      out.write("                  <tr>\n");
      out.write("                    <td width=\"50\" height=\"40\">&nbsp;</td>\n");
      out.write("      <td colspan=\"3\" valign=\"top\" ><div align=\"center\" class=\"style1\">ORDER  DETAILS </div></td>\n");
      out.write("      <td width=\"50\">&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td width=\"150\" valign=\"top\"><!--DWLayoutEmptyCell-->&nbsp;</td>\n");
      out.write("      <td width=\"40\">&nbsp;</td>\n");
      out.write("      <td width=\"150\" valign=\"top\"><!--DWLayoutEmptyCell-->&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("                    <td valign=\"top\"><div align=\"center\">Order Id <span class=\"style2\">*</span></div></td>\n");
      out.write("                    <td>&nbsp;</td>\n");
      out.write("                    <td valign=\"top\"><label>\n");
      out.write("                                     ");
      if (_jspx_meth_sql_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                     <select name=\"ordid\" id=\"ordid\" class=\"combo\"  onchange =\"getOrder()\">\n");
      out.write("                            <option></option>\n");
      out.write("                            ");
      if (_jspx_meth_core_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                      </select>\n");
      out.write("                    </label></td>\n");
      out.write("                    <td>&nbsp;</td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("                    <td valign=\"top\"><!--DWLayoutEmptyCell-->&nbsp;</td>\n");
      out.write("                    <td>&nbsp;</td>\n");
      out.write("                    <td valign=\"top\"><!--DWLayoutEmptyCell-->&nbsp;</td>\n");
      out.write("                    <td>&nbsp;</td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Prospect Id</div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><label>\n");
      out.write("        <input name=\"prosid\"  class=\"txtfld\" id=\"select2\">\n");
      out.write("\n");
      out.write("        </label></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Employee Id</div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\">\n");
      out.write("\t  <input type=\"text\" name=\"empid\" class=\"txtfld\" id=\"select3\">\n");
      out.write("\n");
      out.write("\t\t</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Finance Src Map Id</div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><input type=\"text\" name=\"fsmid\" class=\"txtfld\" id=\"select4\">\n");
      out.write("\t </td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Model Id</div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><input type=\"text\" name=\"modid\" class=\"txtfld\" id=\"select5\">\n");
      out.write("   </td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Color Id </div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><label>\n");
      out.write("        <input type=\"text\" name=\"colid\" id=\"select6\" class=\"txtfld\">\n");
      out.write("        </label></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Inventory Id</div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><label>\n");
      out.write("        <input type=\"text\" name=\"invid\" id=\"select7\" class=\"txtfld\">\n");
      out.write("          </label></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">No Of Products Ordered </div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><label>\n");
      out.write("        <input type=\"text\" name=\"nopord\" id=\"select8\" class=\"txtfld\">\n");
      out.write("\n");
      out.write("        </label></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Order Date </div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><label>\n");
      out.write("              <input type=\"text\" name=\"date1\" class=\"txtfld\">\n");
      out.write("      <a href=\"javascript:showCal('calender1')\"></a>\n");
      out.write("      </label></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">Status</div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><label>\n");
      out.write("              <input type=\"text\" name=\"status\" id=\"select10\" class=\"txtfld\">\n");
      out.write("        </label></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">\n");
      out.write("              <input name=\"Submit\" type=\"submit\"  class=\"buttonSubmit\" value=\"DELETE\" />\n");
      out.write("    </div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td valign=\"top\"><div align=\"center\">\n");
      out.write("        \n");
      out.write("      </div></td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td height=\"20\">&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("      <td>&nbsp;</td>\n");
      out.write("    </tr>\n");
      out.write("   </table>\n");
      out.write("        </form>\n");
      out.write("</div>\n");
      out.write("    </center>\n");
      out.write("     <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("                var o= new Validator(\"deleteorder\");\n");
      out.write("                o.addValidation(\"ordid\",\"req\",\"can't left blank\")\n");
      out.write("\n");
      out.write("      </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
    _jspx_th_sql_query_0.setSql("select * from order_booking_master");
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
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Order_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${data.Order_Id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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
}
