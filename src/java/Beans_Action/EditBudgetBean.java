package Beans_Action;

import java.sql.*;
import conn.GetDBConnection;
/**
 *
 * @author Yukti
 */
public class EditBudgetBean extends org.apache.struts.action.ActionForm
{
 private int t1;
 private int t2;
 private int t3;
 private int t4;
 private int t5;
 private int t6;
 private float t7;

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

    public int getT6() {
        return t6;
    }

    public void setT6(int t6) {
        this.t6 = t6;
    }

    public float getT7() {
        return t7;
    }

    public void setT7(float t7) {
        this.t7 = t7;
    }

 public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
             Statement st=c.createStatement();
             i= st.executeUpdate("update budget_master set BudgetMonth_Id='"+t5+"', Budget_Year="+t6+", Budget_Amount="+t7+" where Budget_Id="+t1+"");
             System.out.print("hello 22");
             st.close();
             c.close();
        }
         catch(SQLException se)
            {
            System.out.print("SqlException in BudgetBean" + se);
            }
         catch(Exception e)
             {
         System.out.print("OtherException in BudgetBean" + e);
            }
     return i;
    }
}