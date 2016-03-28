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
public class Edit_DesignationFormBean extends org.apache.struts.action.ActionForm
{
    
   private String t1;
    private String ta1;
    private String selectc1;
    private String selectc2;
    private  int t2;

    public String getSelectc1() {
        return selectc1;
    }

    public void setSelectc1(String selectc1) {
        this.selectc1 = selectc1;
    }

    public String getSelectc2() {
        return selectc2;
    }

    public void setSelectc2(String selectc2) {
        this.selectc2 = selectc2;
    }

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
        this.t2= t2;
    }

    public String getTa1() {
        return ta1;
    }

    public void setTa1(String ta1) {
        this.ta1 = ta1;
    }


     public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();

             i= st.executeUpdate("update designation_master set Desig_Name='"+t1+"',Desig_Desc='"+ta1+"',AccessTo_All_Branches="+selectc1+",Access_To_All_Teams="+selectc2+" where Desig_Id="+t2+"");
            System.out.print("hello 22");
           st.close();
           c.close();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In edit_designation  Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int edit designation tBean ");
            }
     return i;
    }

}
