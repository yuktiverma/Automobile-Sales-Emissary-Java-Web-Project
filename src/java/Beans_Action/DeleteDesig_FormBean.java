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
public class DeleteDesig_FormBean extends org.apache.struts.action.ActionForm
{

    public int getT4() {
        return t4;
    }

    public void setT4(int t4) {
        this.t4 = t4;
    }
    private int t4;

    public int deleteData()
    {
        int i=0;
        try
        {
        i=0;
        Connection con=conn.GetDBConnection.getDBConnection();
        Statement st=con.createStatement();
        i=st.executeUpdate("delete from designation_master where Desig_Id="+t4+"");
        }
        catch(SQLException se)
        {
        System.out.print("Sql Exception in Delete  dessignation Bean");
        return i;
        }
        return i;

    }
   
}
