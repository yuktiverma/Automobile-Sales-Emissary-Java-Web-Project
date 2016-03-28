package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;


/**
 *
 * @author Yukti
 */
public class AddTargetBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private int selectttn;
    private int t3;
    private int t4;
    private String t5;
    private int t6;

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

    public int getselectttn() {
        return selectttn;
    }

    public void setselectttn(int selectttn) {
        this.selectttn = selectttn;
    }

    public int getT3() {
        return t3;
    }

    public void setT3(int t3) {
        this.t3 = t3;
    }

    public int getT4() {
        return t4;
    }

    public void setT4(int t4) {
        this.t4 = t4;
    }

    public String getT5() {
        return t5;
    }

    public void setT5(String t5) {
        this.t5 = t5;
    }

    public int getT6() {
        return t6;
    }

    public void setT6(int t6) {
        this.t6 = t6;
    }

    public  int insertData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into target_master values(null,?,?,?,?,?,?)");
             pstmt.clearParameters();
             pstmt.setInt(1,t1);
             pstmt.setInt(2,selectttn);
             pstmt.setInt(3,t3);
             pstmt.setInt(4,t4);
             pstmt.setString(5,t5);
             pstmt.setInt(6,t6);
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