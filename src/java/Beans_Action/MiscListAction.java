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
import java.util.*;

/**
 *
 * @author Yukti
 */
public class MiscListAction extends org.apache.struts.action.Action
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

        MiscListBean mlb=(MiscListBean)form;
        String status=null;
        ArrayList<MyTable> a=mlb.display();
       mlb.setAl(a);

        try
        {
        String misc=mlb.getMisc_list();
        //String sql;
        if(misc.equals("Models"))
        {
            status="Models";
        }
        else if(misc.equals("Branch"))
        {
            status="Branch";

        }
        else if(misc.equals("Employee"))
        {
            status="Employee";
        }
        else if(misc.equals("Target"))
        {
            status="Target";

        }
        else if(misc.equals("Prospect"))
        {
            status="Prospect";
        }

        ResultSet r=mlb.displayData();
        Result res=ResultSupport.toResult(r);
        if(r!=null)
        {
            request.setAttribute("rs", res);
        }
        }
        catch(NullPointerException ne)
        {
            System.out.println("null exception "+ne.getMessage());
        }
        return mapping.findForward(status);
    }
    }
