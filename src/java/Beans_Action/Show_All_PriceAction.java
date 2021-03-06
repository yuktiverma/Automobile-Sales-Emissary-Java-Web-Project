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
public class Show_All_PriceAction extends org.apache.struts.action.Action
{
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {
        String st=null;
        Show_All_PriceBean sapb=(Show_All_PriceBean)form;
        ResultSet rs=sapb.displayData();
        Result r=ResultSupport.toResult(rs);
        request.setAttribute("r", r);
        if(r!=null)
        {
         st="Ok";
        }
        else
        {
        st="NotOk";
        }
        return mapping.findForward(st);
    }
}