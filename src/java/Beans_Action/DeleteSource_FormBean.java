/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;
import conn.GetDBConnection;
import java.sql.*;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class DeleteSource_FormBean extends org.apache.struts.action.ActionForm
{
     private  int srcid;

    public int getSrcid() {
        return srcid;
    }

    public void setSrcid(int srcid) {
        this.srcid = srcid;
    }

     public  int deleteData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("delete from source_master where Source_Id=?");
             pstmt.clearParameters();


             pstmt.setInt(1,srcid);

             i= pstmt.executeUpdate();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...from source Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception from add order Bean ");
            }
     return i;
    }

   
}
