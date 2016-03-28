
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
public class Add_TeamFormBean extends org.apache.struts.action.ActionForm
{
private int selectb;
private int  selectmid;
private int selectlid;
private int selecttt;
private int selectst;
private String t3;

    public int getSelectlid() {
        return selectlid;
    }

    public void setSelectlid(int selectlid) {
        this.selectlid = selectlid;
    }

    public int getSelectmid() {
        return selectmid;
    }

    public void setSelectmid(int selectmid) {
        this.selectmid = selectmid;
    }
   


    public int getSelectb() {
        return selectb;
    }

    public void setSelectb(int selectb) {
        this.selectb = selectb;
    }

   

    public int getSelectst() {
        return selectst;
    }

    public void setSelectst(int selectst) {
        this.selectst = selectst;
    }

    public int getSelecttt() {
        return selecttt;
    }

    public void setSelecttt(int selecttt) {
        this.selecttt = selecttt;
    }

    public String getT3() {
        return t3;
    }

    public void setT3(String t3) {
        this.t3 = t3;
    }


    public  int insertData()
    {
        int i=0;
     try
        {

        
             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into team_trans_master values(null,?,?,?,?,?,?)");
             pstmt.clearParameters();
System.out.println("hello 22");
             pstmt.setInt(1, selectb);
             pstmt.setInt(2, selectmid);
             pstmt.setInt(3, selectlid);
             pstmt.setInt(5, selecttt);
             pstmt.setInt(6, selectst);
             pstmt.setString(4,t3);
             i= pstmt.executeUpdate();
System.out.println("hello 33");
        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add_team Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception in add team tBean ");
            }
     return i;
    }
    }
