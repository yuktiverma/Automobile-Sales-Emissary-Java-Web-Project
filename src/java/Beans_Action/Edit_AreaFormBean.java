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
public class Edit_AreaFormBean extends org.apache.struts.action.ActionForm {
    
    private int t1;
     private String t2;

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
 String arean=null;
    public  int editData()
    {
        int i=0;
         System.out.println("action1");
     try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
 System.out.println("action2");
             i= st.executeUpdate("update area_master set P_Area_Id='"+t1+"',P_Area_Name='"+t2+"' where P_Area_Id="+t1+"" );
            System.out.print("hello 22");
           st.close();
           c.close();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In edit_branch Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int edit branch  tBean ");
            }
     return i;
    }
}
