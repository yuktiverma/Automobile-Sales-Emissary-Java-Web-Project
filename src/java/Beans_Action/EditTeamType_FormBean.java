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
public class EditTeamType_FormBean extends org.apache.struts.action.ActionForm
{
    private int t1;
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

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

    public  int editData()
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
               st=c.createStatement();
            i= st.executeUpdate("update teamtype_master set Team_Type='"+teamtype+"',Team_TypeName='"+selectttn+"' where Team_Type_Id="+t1+"");
            System.out.print("hello 22");
           st.close();
           c.close();


              con.close();
        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In edit_team type Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int edit team type Bean ");
            }
     return i;
    }
}

