package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
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

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\">\n");
      out.write("<head>\n");
      out.write("\t<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"CSS/css3menu1/style.css\" type=\"text/css\" /><style type=\"text/css\">._css3m{display:none}</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body style=\"background-color:#EBEBEB\">\n");
      out.write("<div style=\"margin-left: 30px; margin-bottom: 60px;\">\n");
      out.write("    \n");
      out.write("<ul id=\"css3menu1\" class=\"topmenu\">\n");
      out.write("\t<li class=\"topfirst\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\"><span>Configuration</span></a>\n");
      out.write("\t<ul>\n");
      out.write("\t\t<li class=\"subfirst\"><a href=\"#\"><span>Organization</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_org.do\">Add Organization</a></li>\n");
      out.write("\t\t\t<li><a href=\"showallorg.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Branch</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_branch.do\">Add Branch</a></li>\n");
      out.write("\t\t\t<li><a href=\"showallbranch.do\">Show All Branch</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Team</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"add_teamtype.do\">Add Team Type</a></li>\n");
      out.write("\t\t\t<li><a href=\"add_team.do\">Add Team </a></li>\n");
      out.write("\t\t\t<li><a href=\"showall_team_type.do\">Show All Team Type</a></li>\n");
      out.write("\t\t\t<li><a href=\"showallteam.do\">Show All Teams</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Employee</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_Employee.do\">Add Employee</a></li>\n");
      out.write("\t\t\t<li><a href=\"showallemp.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Designation</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"add_designation.do\">Add</a></li>\n");
      out.write("\t\t\t<li><a href=\"showalldesig.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t</ul></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\"><span>Configure Presales</span></a>\n");
      out.write("\t<ul>\n");
      out.write("\t\t<li class=\"subfirst\"><a href=\"#\"><span>Budget</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Add_Budget.do\">Add Budget</a></li>\n");
      out.write("\t\t\t<li><a href=\"showAllBudget.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Base Model Details</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Add_Base_Model.do\">Add BaseModel</a></li>\n");
      out.write("\t\t\t<li><a href=\"showAllBaseModel.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("                <li><a href=\"#\"><span>Model</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_Model.do\">Add Model</a></li>\n");
      out.write("\t\t\t<li><a href=\"showAllModel.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Target</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Add_Target.do\">Add Target</a></li>\n");
      out.write("\t\t\t<li><a href=\"showAllTarget.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Price</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Add_Price.do\">Add Price</a></li>\n");
      out.write("\t\t\t<li><a href=\"showAllPrice.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Color</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_Color.do\">Add Color</a></li>\n");
      out.write("\t\t\t<li><a href=\"showAllColor.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t\n");
      out.write("\t</ul></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"width:127px;height:20px;line-height:20px;\"><span>Presales</span></a>\n");
      out.write("\t<ul>\n");
      out.write("\t\t<li class=\"subfirst\"><a href=\"#\"><span>Area</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_Area.do\">Add Area</a></li>\n");
      out.write("\t\t\t<li><a href=\"ShowAll_Area.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Action</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\">\n");
      out.write("                     <a href=\"add_action.do\">Add Action</a></li>\n");
      out.write("\t\t\t<li><a href=\"showallaction.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Industry</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_Industry.do\">Add Industry</a></li>\n");
      out.write("\t\t\t<li><a href=\"showallindustry.do\">Show All</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Prospect</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Add_Prospect.do\">Add Prospect Details</a></li>\n");
      out.write("\t\t\t<li><a href=\"editprospect.do\">Update Prospect Details</a></li>\n");
      out.write("                        <li><a href=\"deleteprospect.do\">Delete Prospect Details</a></li>\n");
      out.write("                        <li><a href=\"showprospect.do\">Show Prospect Details</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("                <li><a href=\"#\"><span>Case Detail</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"Add_Case.do\">Add CaseDetails</a></li>\n");
      out.write("\t\t\t<li><a href=\"editcase.do\">Update Case Details</a></li>\n");
      out.write("                        <li><a href=\"deletecase1.do\">Delete Case Details</a></li>\n");
      out.write("                        <li><a href=\"showcase.do\">Show Case Details</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t</ul></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\">Offers To Customer</a>\n");
      out.write("<ul>\n");
      out.write("\t\t<li class=\"subfirst\"><a href=\"#\"><span>Order</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li><a href=\"AddOrderFrame.do\">Add Order</a></li>\n");
      out.write("\t\t\t<li><a href=\"EditOrderFrame.do\">Edit Order</a></li>\n");
      out.write("\t\t\t<li><a href=\"ShowOrderFrame.do\">Show Order</a></li>\n");
      out.write("\t\t\t<li><a href=\"DeleteOrderFrame.do\">Delete Order</a></li>\n");
      out.write("\n");
      out.write("\t\t\t</ul></li>\n");
      out.write("                 <li><a href=\"#\"><span>Scheme</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li><a href=\"AddSchemeFrame.do\">Add Scheme</a></li>\n");
      out.write("\t\t\t<li><a href=\"EditSchemeFrame.do\">Edit Scheme</a></li>\n");
      out.write("\t\t\t<li><a href=\"ShowSchemeFrame.do\">Show Scheme</a></li>\n");
      out.write("\t\t\t<li><a href=\"DeleteSchemeFrame.do\">Delete Scheme</a></li>\n");
      out.write("\n");
      out.write("\t\t\t</ul></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<li><a href=\"#\"><span>Source</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li><a href=\"AddSource.do\">Add Source</a></li>\n");
      out.write("\t\t\t<li><a href=\"DeleteSource.do\">Delete Source</a></li>\n");
      out.write("\t\t\t<li><a href=\"ShowSource.do\">Show Source</a></li>\n");
      out.write("                        <li><a href=\"AddFinanceSource.do\">Add Finance Source</a></li>\n");
      out.write("                        <li><a href=\"ShowFinanceSource.do\">Show Finance Source</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"\"><span>Payment</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t<li><a href=\"AddPayment.do\">Add Payment</a></li>\n");
      out.write("\t\t<li><a href=\"EditPayment.do\">Edit Payment </a></li>\n");
      out.write("\t</ul></li>\n");
      out.write("\t</ul>\n");
      out.write("\t</li>\n");
      out.write("        <li class=\"topmenu\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\">Inventory</a></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\">Enterprise Reports</a></li>\n");
      out.write("\n");
      out.write("        <li class=\"topmenu\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\">Inventory Reports</a>\n");
      out.write("            <ul>\n");
      out.write("        <li class=\"subfirst\"><a href=\"#\"><span> Stock </span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"InventoryStockFrame.do\">By Branch</a></li>\n");
      out.write("\t\t\t<li><a href=\"overallStock.do\">Over All Stock</a></li>\n");
      out.write("                </ul></li>\n");
      out.write("                 <li><a href=\"#\"><span> Sold </span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"InventorySoldFrame.do\">By Branch</a></li>\n");
      out.write("\t\t\t<li><a href=\"soldoverallreport.do\">Over All Sold</a></li>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t</ul></li>\n");
      out.write("\n");
      out.write("\t\t<li><a href=\"#\"><span>By Date</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"subfirst\"><a href=\"InventoryByYearFrame.do\">By Year</a></li>\n");
      out.write("\t\t\t<li><a href=\"InventoryByMonthFrame.do\">By Month</a></li>\n");
      out.write("\t\t\t\n");
      out.write("\t\t</ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\">Miscellaneous  List</a>\n");
      out.write("        <ul>\n");
      out.write("\t\t<li class=\"subfirst\"><a href=\"MiscList_Action.do\"><span>Lists</span></a></li>\n");
      out.write("\t</ul>\n");
      out.write("        </li>\n");
      out.write("\t<li class=\"toplast\"><a href=\"#\" style=\"width:127px;height:22px;line-height:22px;\">App Level Security</a></li>\n");
      out.write("        </ul><p class=\"_css3m\"><a href=\"#\">Menu Builder</a></p>\n");
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
}
