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
public class Show_IndustryFormBean extends org.apache.struts.action.ActionForm {
    
     ResultSet displayData()
    {
        ResultSet rs=null;
        System.out.print("mhsdnb");
        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
          System.out.print("mkjnhl.i");
         rs=st.executeQuery("select * from industry_master ");
          System.out.print("trertyy");
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
