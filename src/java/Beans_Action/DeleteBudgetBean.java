/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import java.sql.*;
import conn.GetDBConnection;
public class DeleteBudgetBean extends org.apache.struts.action.ActionForm
{

 private int t1;

    public int getT1()
    {
        return t1;
    }

    public void setT1(int t1)
    {
        this.t1 = t1;
    }


 public  int deleteData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
              i=st.executeUpdate("delete from budget_master where Budget_Id="+t1+"");
              System.out.println("hello");

        }
        catch(SQLException se)
            {
                System.out.print("SQLException in addBaseModel : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in addBaseModel : " + ex);
            }
     return i;
    }

}