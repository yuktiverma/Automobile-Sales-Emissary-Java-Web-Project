package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;

/**
 *
 * @author Yukti
 */
public class Show_All_PriceBean extends org.apache.struts.action.ActionForm
{
    ResultSet displayData()
    {
        ResultSet rs=null;
        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
         rs=st.executeQuery("select * from price_master");
        }
        catch(SQLException s)
        {
            System.out.println("SqlException in Show All PriceBean" + s);
        }
        catch(Exception e)
        {
            System.out.println("OtherException in Show All PriceBean" + e);
        }
        return rs;
    }
}
