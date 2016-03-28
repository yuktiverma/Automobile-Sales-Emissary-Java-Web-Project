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
public class DeleteProspect_formBean extends org.apache.struts.action.ActionForm
{
    private int s1;

    public int getS1() {
        return s1;
    }

    public void setS1(int s1) {
        this.s1 = s1;
    }
    int deleteData()
    {
        int i=0;
        try
        {
       Connection c=conn.GetDBConnection.getDBConnection();
      Statement st=c.createStatement();
      i=st.executeUpdate("delete from prospect_master where Prospect_Id="+s1+"");
    }
        catch(SQLException se)
        {
            System.out.println("sql exception in delpros bean");
        }
        catch(Exception e)
        {
            System.out.println("other exception");
        }
        return i;
    }
}
