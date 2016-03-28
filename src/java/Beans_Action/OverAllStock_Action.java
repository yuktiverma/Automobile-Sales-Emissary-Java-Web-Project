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
public class OverAllStock_Action extends org.apache.struts.action.Action {
    
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
            throws Exception {
        String st=null;
               OverAllStock_FormBean o=(OverAllStock_FormBean)form;
               int c1=o.displayData();
               int c2 =o.displayData1();
               int c3 =o.displayData2();
               int c4=o.displayData3();
               request.setAttribute("c1", c1);
               request.setAttribute("c2", c2);
               request.setAttribute("c3", c3);
               request.setAttribute("c4", c4);
               st="Ok";
        return mapping.findForward(st);
    }
}
