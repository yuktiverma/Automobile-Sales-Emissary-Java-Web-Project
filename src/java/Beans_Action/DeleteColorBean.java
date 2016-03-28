package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;


/**
 *
 * @author Yukti
 */

public class DeleteColorBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private String t2;
    private int t3;

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

    public int getT3() {
        return t3;
    }

    public void setT3(int t3) {
        this.t3 = t3;
    }

    public  int deleteData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
              i=st.executeUpdate("delete from color_master where Color_Id="+t1+"");


        }
        catch(SQLException se)
            {
                System.out.print("SQLException in ColorBean : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in ColorBean : " + ex);
            }
     return i;
    }

}
