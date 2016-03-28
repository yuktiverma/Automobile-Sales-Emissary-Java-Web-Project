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
public class DeleteBranch_FormBean extends org.apache.struts.action.ActionForm
{
    private int t11;

    public int getT11() {
        return t11;
    }

    public void setT11(int t11) {
        this.t11 = t11;
    }


     public int deleteData()
    {
        int i=0;
        try
        {
        i=0;
        Connection con=conn.GetDBConnection.getDBConnection();
        Statement st=con.createStatement();
        i=st.executeUpdate("delete from branch_master where Branch_Id="+t11+"");
        }
        catch(SQLException se)
        {
        System.out.print("Sql Exception in Delete team type Bean");
        return i;
        }
        return i;

    }

}
