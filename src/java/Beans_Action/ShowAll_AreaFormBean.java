/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class ShowAll_AreaFormBean extends org.apache.struts.action.ActionForm {
    
    ResultSet displayData()
    {
        ResultSet rs=null;
        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
         System.out.println("hgvsdajh1");
         rs=st.executeQuery("select * from area_master");
         System.out.println("hgvsdajh2");
        }
        catch(SQLException s)
        {
            System.out.println("sql Exception In display org bean");
        }
        catch(Exception s)
        {
            System.out.println("Other exception in Display  org Bean");
        }
        return rs;

    }
}
