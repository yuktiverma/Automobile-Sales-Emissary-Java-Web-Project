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
public class InventoryByYear_Action extends org.apache.struts.action.Action {
    
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
         InventoryByYear_Bean iby =  (InventoryByYear_Bean) form;
           ArrayList <InventoryByYear> al1 = iby.display();
        System.out.println("alll = "+al1);
       iby.setAl(al1);
        System.out.println("---> "+iby.getAl());
       if(al1!=null)
       {
         st="ok";
       }
       else
       {
         st="notok";
       }

          return mapping.findForward(st);

    }
}
