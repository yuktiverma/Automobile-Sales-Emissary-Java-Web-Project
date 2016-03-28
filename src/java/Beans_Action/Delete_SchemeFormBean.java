/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class Delete_SchemeFormBean extends org.apache.struts.action.ActionForm {
    
int schmid;

    public int getSchmid() {
        return schmid;
    }

    public void setSchmid(int schmid) {
        this.schmid = schmid;
    }


        public  int insertData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("delete from scheme_master where Scheme_Id=?");
             pstmt.clearParameters();


             pstmt.setInt(1,schmid);

             i= pstmt.executeUpdate();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...from add order Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception from add order Bean ");
            }
     return i;
    }











}
