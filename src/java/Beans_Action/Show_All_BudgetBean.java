package Beans_Action;

import java.sql.*;
import conn.GetDBConnection;


/**
 *
 * @author Yukti
 */

public class Show_All_BudgetBean extends org.apache.struts.action.ActionForm
{
 ResultSet displayData()
    {
        ResultSet rs=null;
        try
        {
         Connection c= GetDBConnection.getDBConnection();
         System.out.println("hello1");
         Statement st=c.createStatement();
         rs=st.executeQuery("select * from budget_master");
         System.out.println("hello2");
        }
        catch(SQLException s)
        {
            System.out.println("SqlException in Show All BudgetBean" + s);
        }
        catch(Exception e)
        {
            System.out.println("OtherException in Show All BudgetBean" + e);
        }
        return rs;
    }
}