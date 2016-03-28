/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.util.*;
import java.sql.*;

/**
 *
 * @author Yukti
 */
public class TargetBaseBean extends org.apache.struts.action.ActionForm
{
    private String t1;

    public String getT1()
    {
        return t1;
    }

    public void setT1(String t1)
    {
        this.t1 = t1;
    }
    private String selectttn;

    public String getSelectttn() {
        return selectttn;
    }

    public void setSelectttn(String selectttn) {
        this.selectttn = selectttn;
    }

    
    private ArrayList<TargetTable> all1;

    public ArrayList<TargetTable> getAll1() {
        return all1;
    }

    public void setAll1(ArrayList<TargetTable> all1) {
        this.all1 = all1;
    }

    

    ArrayList<TargetTable> display()
    {
     ArrayList<TargetTable> all1= new ArrayList<TargetTable>();
     try
     {
         
     Connection c=conn.GetDBConnection.getDBConnection();
     System.out.println("connection "+c);
     Statement st=c.createStatement();
     System.out.println("statement "+st);
     String bId=t1.substring(0,3);
     System.out.println("target  bid== "+bId);
     System.out.println("target  t2== "+selectttn);
     //String mId=t2.substring(0,4);
     //System.out.println("target  mid== "+mId);
     int bid=Integer.parseInt(bId);
     int mid=Integer.parseInt(selectttn);
     System.out.println("target  bid== "+bid);
     System.out.println("target  mid== "+mid);
     ResultSet rs=st.executeQuery("select * from target_master where BaseModel_Id="+bid+" and Model_Id="+mid);
     System.out.println("resultset "+rs);
       while(rs.next())
       {
          all1.add(new TargetTable(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getInt(5),rs.getString(6),rs.getInt(7)));
          /*System.out.println(rs.getInt(1));
          System.out.println(rs.getString(2));
          System.out.println(rs.getDouble(3));
          System.out.println(rs.getFloat(4));
          System.out.println(rs.getString(5));
          System.out.println(rs.getString(6));
          System.out.println(rs.getString(8));
          System.out.println(rs.getFloat(9));
          System.out.println(rs.getFloat(10));
          System.out.println(rs.getString(11));*/
       }
     }
     catch(SQLException s)
     {
                   System.out.println("sql in targetbasebean "+s.getMessage());

     }
     catch(NullPointerException ne)
     {
         System.out.println("sql in targetbasebean "+ne.getMessage());
     }
     catch(Exception e)
     {
                   System.out.println("exp in targetbasebean "+e.getMessage());

     }
     return all1;
    }

}
