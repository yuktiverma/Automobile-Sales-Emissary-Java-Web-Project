/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;


import java.sql.*;
import java.util.*;

/**
 *
 * @author Yukti
 */
public class MiscListBean extends org.apache.struts.action.ActionForm
{
 private String misc_list;

    public String getMisc_list() {
        return misc_list;
    }

    public void setMisc_list(String misc_list) {
        this.misc_list = misc_list;
    }
private ArrayList<MyTable> al;

    public ArrayList<MyTable> getAl() {
        return al;
    }

    public void setAl(ArrayList<MyTable> al) {
        this.al = al;
    }
    ResultSet displayData()
    {
        ResultSet rs=null;
      try
      {
        Connection c=conn.GetDBConnection.getDBConnection();
        Statement st=c.createStatement();
        rs=st.executeQuery("select * from branch_master");
        
        
      }
      catch(SQLException s)
      {
          System.out.println("qqqqqqqq");
      }
      catch(Exception s)
      {
          System.out.println("wwwwww");
      }
      return rs;
    }
    ArrayList<MyTable> display()
    {
     ArrayList<MyTable> all= new ArrayList<MyTable>();
     try
     {
     Connection c=conn.GetDBConnection.getDBConnection();
     Statement st=c.createStatement();
     ResultSet rs=st.executeQuery("select * from branch_master");
       while(rs.next())
       {
          all.add(new MyTable(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11)));
          System.out.println(rs.getInt(1));
          System.out.println(rs.getInt(2));
          System.out.println(rs.getString(3));
       }
     }
     catch(SQLException s)
     {
                   System.out.println("sql in misclist 2 "+s.getMessage());

     }
     catch(Exception e)
     {
                   System.out.println("exp in misclist 2 "+e.getMessage());

     }
     return all;
    }

}
