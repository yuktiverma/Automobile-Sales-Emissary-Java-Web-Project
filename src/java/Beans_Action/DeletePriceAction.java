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
public class DeletePriceAction extends org.apache.struts.action.Action {

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
    String st=null;

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception
    {
    DeletePriceBean dpb=(DeletePriceBean)form;
    int f=dpb.deleteData();
    if(f==1)
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
