/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;



/**
 *
 * @author Yukti
 */
public class AddModelBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private String t2;
    private String t3;
    private String t4;
    private String t5;
    private String t6;
    private String t7;
    private String t8;

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

    public String getT5() {
        return t5;
    }

    public void setT5(String t5) {
        this.t5 = t5;
    }

    public String getT6() {
        return t6;
    }

    public void setT6(String t6) {
        this.t6 = t6;
    }

    public String getT7() {
        return t7;
    }

    public void setT7(String t7) {
        this.t7 = t7;
    }

    public String getT8() {
        return t8;
    }

    public void setT8(String t8) {
        this.t8 = t8;
    }

    public  int insertData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into model_master values(null,?,?,?,?,?,?,?,?)");
             pstmt.clearParameters();
             pstmt.setInt(1,t1);
             pstmt.setString(2,t2);
             pstmt.setString(3,t3);
             pstmt.setString(4,t4);
             pstmt.setString(5,t5);
             pstmt.setString(6,t6);
             pstmt.setString(7,t7);
             pstmt.setString(8,t8);
             i= pstmt.executeUpdate();
        }
        catch(SQLException se)
            {
                System.out.print("SQLException in AddModelBean : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in AddModelBean : " + ex);
            }
     return i;
    }
}
