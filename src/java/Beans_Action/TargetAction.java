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
import java.sql.*;
import javax.servlet.jsp.jstl.sql.*;

/**
 *
 * @author Yukti
 */
public class TargetAction extends org.apache.struts.action.Action
{
    
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
        String status;
        TargetBean tb=(TargetBean)form;
        // System.out.println("mb......"+mb);
        String t=tb.getT1();
        System.out.println("in model action "+t);
        if(t!=null)
        {
          status="OK";
        }
        else
        {
            status="NOTOK";
        }
        ResultSet r=tb.displayData();
        Result res=ResultSupport.toResult(r);
        if(r!=null)
        {
            request.setAttribute("rs", res);
          //sql="ok";
        }
        return mapping.findForward(status);
    }
}
