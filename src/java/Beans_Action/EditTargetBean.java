package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;


/**
 *
 * @author Yukti
 */
public class EditTargetBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private int t2;
    private int t3;
    private int t4;
    private int t5;
    private String t6;
    private int t7;

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

    public int getT5() {
        return t5;
    }

    public void setT5(int t5) {
        this.t5 = t5;
    }

    public String getT6() {
        return t6;
    }

    public void setT6(String t6) {
        this.t6 = t6;
    }

    public int getT7() {
        return t7;
    }

    public void setT7(int t7) {
        this.t7 = t7;
    }

    public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
             Statement st=c.createStatement();
             i= st.executeUpdate("update target_master set Number_Of_Product="+t4+", Month_Id="+t5+", Target_Desc='"+t6+"', Year='"+t7+"' where Target_Id="+t1+"");
             st.close();
             c.close();
        }
         catch(SQLException se)
            {
            System.out.print("SqlException in ModelBean" + se);
            }
         catch(Exception e)
             {
         System.out.print("OtherException in ModelBean" + e);
            }
     return i;
    }
}