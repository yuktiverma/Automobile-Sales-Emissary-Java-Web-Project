/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class Delete_OrderFormBean extends org.apache.struts.action.ActionForm
{
    private int ordid;

    public int getOrdid() {
        return ordid;
    }

    public void setOrdid(int ordid) {
        this.ordid = ordid;
    }
        public  int insertData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("delete from order_booking_master where Order_Id=?");
             pstmt.clearParameters();

            
             pstmt.setInt(1,ordid);

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


