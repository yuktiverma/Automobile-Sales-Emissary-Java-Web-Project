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

/**
 *
 * @author Yukti
 */
public class Add_TeamTypeAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
     String st=null;
    
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {

       System.out.print("\nhello");
       Add_TeamTypeFormBean attfb=(Add_TeamTypeFormBean)form;
       int flag=attfb.insertData();

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
