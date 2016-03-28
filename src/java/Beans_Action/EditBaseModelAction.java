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
public class EditBaseModelAction extends org.apache.struts.action.Action
{
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {
        String st=null;
       EditBaseModelBean ebmb=(EditBaseModelBean)form;
        int flag=ebmb.editData();
        if(flag==1)
        {
        st="Ok";
        return mapping.findForward(st);
        }
         else
        {
           st="Not Ok";
        }
        return mapping.findForward(st);
    }
}