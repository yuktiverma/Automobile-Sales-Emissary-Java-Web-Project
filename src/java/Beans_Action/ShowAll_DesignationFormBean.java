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
public class ShowAll_DesignationFormBean extends org.apache.struts.action.ActionForm {
    
   ResultSet displayData()
    {
        ResultSet rs=null;
        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
         rs=st.executeQuery("select * from designation_master");
        }
        catch(SQLException s)
        {
            System.out.println("sql Exception In show all designation bean");
        }
        catch(Exception s)
        {
            System.out.println("Other exception in show all designation  Bean");
        }
        return rs;

    }
}
