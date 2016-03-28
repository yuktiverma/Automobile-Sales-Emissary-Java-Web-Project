/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import conn.GetDBConnection;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class EditCase_FormBean extends org.apache.struts.action.ActionForm
{

  private int select3;
  private int select5;

    public int getSelect3() {
        return select3;
    }

    public void setSelect3(int select3) {
        this.select3 = select3;
    }

    public int getSelect5() {
        return select5;
    }

    public void setSelect5(int select5) {
        this.select5 = select5;
    }

    public int getSelect6() {
        return select6;
    }

    public void setSelect6(int select6) {
        this.select6 = select6;
    }

    public int getSelect7() {
        return select7;
    }

    public void setSelect7(int select7) {
        this.select7 = select7;
    }

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public int getT10() {
        return t10;
    }

    public void setT10(int t10) {
        this.t10 = t10;
    }

    public String getT4() {
        return t4;
    }

    public void setT4(String t4) {
        this.t4 = t4;
    }

    public String getTa1() {
        return ta1;
    }

    public void setTa1(String ta1) {
        this.ta1 = ta1;
    }
  private int select6;
  private int select7;
  private int t10;
  private String t1;
   private String t4;
  private String ta1;
    
  

 public  int editData()
    {
        int i=0;
try
        {
         

              Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
               st=c.createStatement();
            i= st.executeUpdate("update case_detail_master set NextPlanOf_Action_Id="+select6+",Follow_Up_Action_Id="+select5+",State_Id="+select3+",Predicted_Close_Date='"+t1+"',Actual_Close_Date='"+t4+"',Notes='"+ta1+"',Created_By="+select7+" where Case_Id="+t10+" ");
            System.out.print("hello 22");
           st.close();
           c.close();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add_team type Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int Insert team type Bean ");
            }
     return i;
    }
}
