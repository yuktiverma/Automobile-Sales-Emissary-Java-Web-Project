/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import java.sql.*;
import conn.GetDBConnection;


public class DeleteTargetBean extends org.apache.struts.action.ActionForm
{

     private int t1;

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

 public  int deleteData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
              i=st.executeUpdate("delete from target_master where Target_Id="+t1+"");


        }
        catch(SQLException se)
            {
                System.out.print("SQLException in pricemaster : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in pricemaster : " + ex);
            }
     return i;
    }


}
