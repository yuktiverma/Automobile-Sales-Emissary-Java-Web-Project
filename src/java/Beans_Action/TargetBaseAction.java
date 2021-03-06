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
import java.util.*;

/**
 *
 * @author Yukti
 */
public class TargetBaseAction extends org.apache.struts.action.Action
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
        TargetBaseBean tbb=(TargetBaseBean) form;
        String st=null;
        ArrayList<TargetTable> a=tbb.display();
        tbb.setAll1(a);
        if(a!=null)
        {
            st="OK";
        }
        else
        {
            st="NOTOK";
 }



        return mapping.findForward(st);
    }
}
