package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;


/**
 *
 * @author Yukti
 */
public class AddPriceBean extends org.apache.struts.action.ActionForm
{
    private String t1;
    private String t2;
    private String t3;
    private String t4;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

    public String getT3() {
        return t3;
    }

    public void setT3(String t3) {
        this.t3 = t3;
    }

    public String getT4() {
        return t4;
    }

    public void setT4(String t4) {
        this.t4 = t4;
    }

     public  int insertData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into price_master values(null,?,?,?,?)");
             pstmt.clearParameters();
             pstmt.setString(1,t1);
             pstmt.setString(2,t2);
             pstmt.setString(3,t3);
             pstmt.setString(4,t4);
             i= pstmt.executeUpdate();
        }
        catch(SQLException se)
            {
                System.out.print("SQLException in addPrice : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in addPrice : " + ex);
            }
     return i;
    }
}
