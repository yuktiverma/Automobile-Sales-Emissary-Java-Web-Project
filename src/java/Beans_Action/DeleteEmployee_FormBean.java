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
public class DeleteEmployee_FormBean extends org.apache.struts.action.ActionForm
{

    private int t27;

    public int getT27() {
        return t27;
    }

    public void setT27(int t27) {
        this.t27 = t27;
    }
   public int deleteData()
    {
        int i=0;
        try
        {
        i=0;
        Connection con=conn.GetDBConnection.getDBConnection();
        Statement st=con.createStatement();
        i=st.executeUpdate("delete from employee_master where Emp_Id="+t27+"");
        }
        catch(SQLException se)
        {
        System.out.print("Sql Exception in Delete employee Bean");
        return i;
        }
        return i;

    }
}
