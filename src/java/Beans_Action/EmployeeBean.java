/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Yukti
 */
public class EmployeeBean extends org.apache.struts.action.ActionForm {
    

private String t1;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    private String t2;

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }
    private ArrayList<EmployeeTable> all1;

    public ArrayList<EmployeeTable> getAll1() {
        return all1;
    }

    public void setAll1(ArrayList<EmployeeTable> all1) {
        this.all1 = all1;
    }

     ArrayList<EmployeeTable> display()
    {
     ArrayList<EmployeeTable> all1= new ArrayList<EmployeeTable>();
     try
     {
         String t=this.getT2();
     Connection c=conn.GetDBConnection.getDBConnection();
     Statement st=c.createStatement();
     ResultSet rs1=st.executeQuery("select Desig_Id from designation_master where Desig_name='"+t+"'");
     int id=0;
     if(rs1.next())
     {
         id=rs1.getInt(1);
         System.out.println("id="+id);
     }
     ResultSet rs=st.executeQuery("select * from employee_master where desig_id="+id);
       while(rs.next())
      {
          all1.add(new EmployeeTable(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getString(18),rs.getString(19),rs.getString(20),rs.getString(21),rs.getString(22),rs.getDate(23),rs.getDate(24)));
          System.out.println("in employee bean");
          System.out.println(rs.getInt(1));
       }
     }
     catch(SQLException s)
     {
                   System.out.println("sql in BranchName 2 "+s.getMessage());

     }
     catch(Exception e)
     {
                   System.out.println("exp in BranchName 2 "+e.getMessage());

     }
     return all1;
    }


}
