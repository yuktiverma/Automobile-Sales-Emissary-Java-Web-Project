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
public class AddColorAction extends org.apache.struts.action.Action
{
    String st=null;
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {
        AddColorBean acb=(AddColorBean)form;
        int flag = acb.insertData();
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
