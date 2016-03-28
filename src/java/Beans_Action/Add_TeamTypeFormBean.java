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
public class Add_TeamTypeFormBean extends org.apache.struts.action.ActionForm

{
     private int  selecttt;
    private String selectttn;
 String teamtype=null;


    public int getSelecttt() {
        return selecttt;
    }

    public void setSelecttt(int selecttt) {
        this.selecttt = selecttt;
    }
  
   

    public String getSelectttn() {
        return selectttn;
    }

    public void setSelectttn(String selectttn) {
        this.selectttn = selectttn;
    }

     public  int insertData()
    {
        int i=0;
       
     try
        {
         Connection con=GetDBConnection.getDBConnection();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from basemodel_master where BaseModel_Id="+selecttt+"");
         while(rs.next())
         {
             System.out.print("\nname:"+rs.getString(2));
             teamtype=rs.getString(2);
          
           break;
         }
         
         st.close();
         con.close();
        
              Connection c=GetDBConnection.getDBConnection();
         PreparedStatement pst=c.prepareStatement("insert into teamtype_master values(null,'"+selectttn+"','"+teamtype+"')");
             i= pst.executeUpdate();
            
              con.close();
        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add_team type Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int add team type Bean ");
            }
     return i;
    }


   
}
