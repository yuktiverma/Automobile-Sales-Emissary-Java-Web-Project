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
public class Add_DesignationFormBean extends org.apache.struts.action.ActionForm
{
    private String t1;
    private String ta1;
    private String selectc1;
    private String selectc2;

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

    public String getTa1() {
        return ta1;
    }

    public void setTa1(String ta1) {
        this.ta1 = ta1;
    }

      public  int insertData()
    {
        int i=0;
     try
        {


             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into designation_master values(null,?,?,?,?)");
             pstmt.clearParameters();

             pstmt.setString(1,t1);
             pstmt.setString(2,ta1);
             pstmt.setString(3,selectc1);
             pstmt.setString(4,selectc2);
             i= pstmt.executeUpdate();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add designation Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int add designation Bean ");
            }
     return i;
    }





    
   
}
