package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;

/**
 *
 * @author Yukti
 */
public class Show_All_TargetBean extends org.apache.struts.action.ActionForm
{
    ResultSet displayData()
    {
        ResultSet rs=null;
        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
         rs=st.executeQuery("select * from target_master");
        }
        catch(SQLException s)
        {
            System.out.println("SqlException in Show All TargetBean" + s);
        }
        catch(Exception e)
        {
            System.out.println("OtherException in Show All TargetBean" + e);
        }
        return rs;
    }
}
