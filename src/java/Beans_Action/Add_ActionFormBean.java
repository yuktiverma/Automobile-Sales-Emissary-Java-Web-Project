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
public class Add_ActionFormBean extends org.apache.struts.action.ActionForm
{

    private String ta1;

    public String getTa1()
    {
        return ta1;
    }

    public void setTa1(String ta1)
    {
        this.ta1 = ta1;
    }

      public  int insertData()
    {
        int i=0;
     try
        {


             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into action_taken_master values(null,?)");
             pstmt.clearParameters();

             pstmt.setString(1,ta1);

             i= pstmt.executeUpdate();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add_action Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other exception in InsertBean ");
            }
     return i;

}
}
