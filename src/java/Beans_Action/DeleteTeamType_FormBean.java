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
public class DeleteTeamType_FormBean extends org.apache.struts.action.ActionForm {



    private int t2;

    public int getT2() {
        return t2;
    }

    public void setT2(int t2) {
        this.t2 = t2;
    }

     public int deleteData()
    {
        int i=0;
        try
        {
        i=0;
        Connection con=conn.GetDBConnection.getDBConnection();
        Statement st=con.createStatement();
        i=st.executeUpdate("delete from teamtype_master where Team_Type_Id="+t2+"");
        }
        catch(SQLException se)
        {
        System.out.print("Sql Exception in Delete team type Bean");
        return i;
        }
        return i;

    }
}
