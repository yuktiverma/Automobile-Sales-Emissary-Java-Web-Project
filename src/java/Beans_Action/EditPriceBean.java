/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import java.sql.*;
import conn.GetDBConnection;

public class EditPriceBean extends org.apache.struts.action.ActionForm
{
private int t1;
private int t2;
private int t3;
private String t4;
private String t5;

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


  public  int updateData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
             Statement st=c.createStatement();

             i= st.executeUpdate("update price_master set Price="+t3+", Date_From='"+t4+"', Date_To='"+t5+"' where Price_Id="+t1+"");

        }
        catch(SQLException se)
            {
                System.out.print("SQLException in pricebean : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in pricebean : " + ex);
            }
     return i;
    }


}
