/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class DeleteCase_FormBean extends org.apache.struts.action.ActionForm
{
    
    private int select;

    public int getSelect() {
        return select;
    }

    public void setSelect(int select) {
        this.select = select;
    }

    int deleteCase()
    {
        int i=0;
        try
        {
            Connection c=conn.GetDBConnection.getDBConnection();
            Statement st=c.createStatement();
            i=st.executeUpdate("delete from case_detail_master where Prospect_Id="+select+"");
        }
        catch(SQLException se)
                {
            System.out.println("SQL Exception");
        }
        catch(Exception e)
        {
            System.out.println("other exception");
        }
        return i;
    }
}
