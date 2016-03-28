/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import javax.servlet.jsp.jstl.sql.*;
import java.sql.*;
/**
 *
 * @author Yukti
 */
public class ShowALL_EmployeeAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {
           String st=null;
        ShowAll_EmployeeFormBean s=(ShowAll_EmployeeFormBean)form;
     ResultSet rs=s.displayData();
              Result r=ResultSupport.toResult(rs);
     request.setAttribute("r", r);
     if(r!=null)
     {
         st="Ok";
        }
        else
     {
     st=" Not Ok";
     }

        return mapping.findForward(st);
    }
    }

