
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
public class Add_OrgAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    
    String st=null;
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
        
        Add_Org_FormBean aofb=(Add_Org_FormBean)form;
        int flag=aofb.insertData();
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
