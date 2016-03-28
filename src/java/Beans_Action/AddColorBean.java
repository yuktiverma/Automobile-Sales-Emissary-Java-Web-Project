package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;

/**
 *
 * @author Yukti
 */
public class AddColorBean extends org.apache.struts.action.ActionForm
{
    private String t1;
    private int t2;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public int getT2() {
        return t2;
    }

    public void setT2(int t2) {
        this.t2 = t2;
    }

    public  int insertData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into color_master values(null,?,?)");
             pstmt.clearParameters();
             pstmt.setString(1,t1);
             pstmt.setInt(2,t2);
             i= pstmt.executeUpdate();
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
