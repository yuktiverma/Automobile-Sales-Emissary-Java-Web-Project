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
public class OverAllStock_FormBean extends org.apache.struts.action.ActionForm {
   int c1,c2,c3,c4;
     int displayData()
    {
         c1=0;

        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
          ResultSet rs=st.executeQuery("select  distinct Branch_Id  from branch_master");
          while(rs.next())
          {
        c1++;
        }
          c.close();
        }
        catch(SQLException s)
        {
            System.out.println("sql Exception In show all org  bean");
        }
        catch(Exception s)
        {
            System.out.println("Other exception in show all  org Bean");
        }

        return c1;

    }


      int displayData1()
    {
          c2=0;

        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
          ResultSet rs=st.executeQuery("select Total_Quantity_Allocated as a from branch_allocation_master");
          while(rs.next())
          {
        c2 =c2+rs.getInt(1);
        }
        }
        catch(SQLException s)
        {
            System.out.println("sql Exception In show all org  bean");
        }
        catch(Exception s)
        {
            System.out.println("Other exception in show all  org Bean");
        }
        return c2;

    }


      int displayData2()
    {
          c3=0;

        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
          ResultSet rs=st.executeQuery("select Model_Sold from branch_allocation_master");
          while(rs.next())
          {
        c3 =c3+rs.getInt(1);
        }
        }
        catch(SQLException s)
        {
            System.out.println("sql Exception In show all org  bean");
        }
        catch(Exception s)
        {
            System.out.println("Other exception in show all  org Bean");
        }
        return c3;

    }


       int displayData3()
    {
          c4=0;

        try
        {
         Connection c= GetDBConnection.getDBConnection();
         Statement st=c.createStatement();
         ResultSet rs4=st.executeQuery("select Quantity_In_Hand as a from branch_allocation_master");
          while(rs4.next())
          {
        c4 =c4+rs4.getInt(1);
        }
        }
        catch(SQLException s)
        {
            System.out.println("sql Exception In show all org  bean");
        }
        catch(Exception s)
        {
            System.out.println("Other exception in show all  org Bean");
        }
        return c4;

    }
}
