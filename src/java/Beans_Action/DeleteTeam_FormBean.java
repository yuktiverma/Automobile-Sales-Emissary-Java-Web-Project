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
public class DeleteTeam_FormBean extends org.apache.struts.action.ActionForm {

    private  int t1;

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

      public int deleteData()
    {
        int i=0;
        try
        {
        i=0;
        Connection con=conn.GetDBConnection.getDBConnection();
        Statement st=con.createStatement();
        i=st.executeUpdate("delete from team_trans_master where Team_Id="+t1+"");
        }
        catch(SQLException se)
        {
        System.out.print("Sql Exception in Delete team Bean");
        return i;
        }
        return i;

    }
}
