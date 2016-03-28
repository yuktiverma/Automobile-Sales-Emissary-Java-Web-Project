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
public class BranchNameBean extends org.apache.struts.action.ActionForm {
    
private String t1,t2,t3;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

    public String getT3() {
        return t3;
    }

    public void setT3(String t3) {
        this.t3 = t3;
    }

private ArrayList<Modeltable> all1;

    public ArrayList<Modeltable> getAll1() {
        return all1;
    }

    public void setAll1(ArrayList<Modeltable> all1) {
        this.all1 = all1;
    }
   
    ArrayList<Modeltable> display()
    {
     ArrayList<Modeltable> all1= new ArrayList<Modeltable>();
     try
     {
     Connection c=conn.GetDBConnection.getDBConnection();
     Statement st=c.createStatement();
     ResultSet rs=st.executeQuery("select * from basemodel_master bm inner join model_master mm on bm.basemodel_id=mm.basemodel_Id join color_master cm on mm.model_Id=cm.model_id");
       while(rs.next())
       {
          all1.add(new Modeltable(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getFloat(4),rs.getString(5),rs.getString(6),rs.getString(8),rs.getFloat(9),rs.getFloat(10),rs.getString(11)));
          System.out.println(rs.getInt(1));
          System.out.println(rs.getString(2));
          System.out.println(rs.getDouble(3));
          System.out.println(rs.getFloat(4));
          System.out.println(rs.getString(5));
          System.out.println(rs.getString(6));
          System.out.println(rs.getString(8));
          System.out.println(rs.getFloat(9));
          System.out.println(rs.getFloat(10));
          System.out.println(rs.getString(11));
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
