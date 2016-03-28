package Beans_Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Yukti
 */

public class DeleteColorAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception 
    {
        String st =null;
        DeleteColorBean dcb=(DeleteColorBean)form;
        int flag=dcb.deleteData();
        if(flag==1)
        {
        st="Ok";
        return mapping.findForward(st);
        }
        else
        {
           st="NotOk";
        }
        return mapping.findForward(st);
    }
}
