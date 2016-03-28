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
public class TargetBean extends org.apache.struts.action.ActionForm
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
    ResultSet displayData()
    {
        ResultSet rs=null;
      try
      {
          String t=t1.substring(0,1);
        Connection c=conn.GetDBConnection.getDBConnection();
        Statement st=c.createStatement();
        rs=st.executeQuery("Select * from basemodel_master");
        //rs=st.executeQuery("select * from basemodel_master bm inner join model_master mm on bm.basemodel_id=mm.basemodel_Id join color_master cm on mm.model_Id=cm.model_id");
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
