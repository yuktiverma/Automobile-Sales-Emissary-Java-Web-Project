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
public class ShowAll_EmployeeFormBean extends org.apache.struts.action.ActionForm {
    
     ResultSet displayData()
    {
        ResultSet rs=null;
        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
         rs=st.executeQuery("select Emp_Id,Emp_Code,Branch_Id,Emp_Fname,Emp_Lname,Desig_Id, Status_Id from employee_master");
        }
        catch(SQLException s)
        {
            System.out.println("sql Exception In show all employee bean");
        }
        catch(Exception s)
        {
            System.out.println("Other exception in show all employee Bean");
        }
        return rs;

    }
}
