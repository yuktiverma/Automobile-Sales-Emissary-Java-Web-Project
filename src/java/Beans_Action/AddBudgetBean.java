package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;

/**
 *
 * @author Yukti
 */
public class AddBudgetBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private int t2;
    private int selectttn;
    private int t4;
    private int t5;
    private float t6;

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

    public int getT2() {
        return t2;
    }

    public void setT2(int t2) {
        this.t2 = t2;
    }

    public int getSelectttn() {
        return selectttn;
    }

    public void setSelectttn(int selectttn) {
        this.selectttn = selectttn;
    }

    
    public int getT4() {
        return t4;
    }

    public void setT4(int t4) {
        this.t4 = t4;
    }

    public int getT5() {
        return t5;
    }

    public void setT5(int t5) {
        this.t5 = t5;
    }

    public float getT6() {
        return t6;
    }

    public void setT6(float t6) {
        this.t6 = t6;
    }



    public  int insertData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into budget_master values(null,?,?,?,?,?,?)");
             System.out.println("Hello1");
             pstmt.clearParameters();
             pstmt.setInt(1,t1);
             pstmt.setInt(2,t2);
             pstmt.setInt(3,selectttn);
             pstmt.setInt(4,t4);
             pstmt.setInt(5,t5);
             pstmt.setFloat(6,t6);
             i= pstmt.executeUpdate();
             System.out.println("Hello2");
        }
        catch(SQLException se)
            {
                System.out.print("SQLException in AddBudget : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in AddBudget : " + ex);
            }
     return i;
    }
}