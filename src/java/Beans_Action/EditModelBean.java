package Beans_Action;

import java.sql.*;
import conn.GetDBConnection;
/**
 *
 * @author Yukti
 */
public class EditModelBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private int t2;
    private String t3;
    private String t4;
    private String t5;
    private String t6;
    private String t7;
    private String t8;
    private String t9;

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

    public String getT9() {
        return t9;
    }

    public void setT9(String t9) {
        this.t9 = t9;
    }

    public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
             Statement st=c.createStatement();
             System.out.println("hello");
             i= st.executeUpdate("update model_master set Model_Name='"+t3+"', Engine='"+t4+"', Capacity='"+t5+"', Dealer_Margin='"+t6+"', Power='"+t7+"', Mileage='"+t8+"', Engine_Type='"+t9+"' where Model_Id="+t1+"");
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
