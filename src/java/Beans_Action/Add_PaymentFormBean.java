/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.sql.*;
/**
 *
 * @author Yukti
 */
public class Add_PaymentFormBean extends org.apache.struts.action.ActionForm
{
    
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

       public  int insertData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into payment_master values(null,?,?)");
             pstmt.clearParameters();

             pstmt.setInt(1,fincid);
             pstmt.setInt(2,ordid);

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
