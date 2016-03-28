/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;


import java.sql.*;


/**
 *
 * @author Yukti
 */
public class ModelBean extends org.apache.struts.action.ActionForm
{
     private String t1;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    


    ResultSet displayData()
    {
        ResultSet rs=null;
      try
      {
        Connection c=conn.GetDBConnection.getDBConnection();
        Statement st=c.createStatement();
        rs=st.executeQuery("select * from basemodel_master bm inner join model_master mm on bm.basemodel_id=mm.basemodel_Id join color_master cm on mm.model_Id=cm.model_id");
      }
      catch(SQLException s)
      {
          System.out.println("qqqqqqqq"+s.getMessage());
      }
      catch(Exception s)
      {
          System.out.println("wwwwww");
      }
      return rs;
    }
}
