/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.sql.*;
/**
 *
 * @author Yukti
 */
public class Edit_PaymentFormBean extends org.apache.struts.action.ActionForm {

    private int pmapid;
    private int fincid;
    private int ordid;

    public int getFincid() {
        return fincid;
    }

    public void setFincid(int fincid) {
        this.fincid = fincid;
    }

    public int getOrdid() {
        return ordid;
    }

    public void setOrdid(int ordid) {
        this.ordid = ordid;
    }

    public int getPmapid() {
        return pmapid;
    }

    public void setPmapid(int pmapid) {
        this.pmapid = pmapid;
    }
      public  int insertData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
              PreparedStatement pstmt=c.prepareStatement("update payment_master set Finance_Id=?,Order_Id=? where Payment_Map_Id=? ");
              pstmt.clearParameters();

             pstmt.setInt(1,fincid);
             pstmt.setInt(2,ordid);
             pstmt.setInt(3,pmapid);
             i= pstmt.executeUpdate();

           }
         catch(SQLException se)
            {
            System.out.print("sql exception...from add order Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception from add order Bean ");
            }
     return i;
}


}
