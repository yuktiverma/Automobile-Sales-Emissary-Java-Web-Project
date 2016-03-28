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
public class Edit_TeamFormBean extends org.apache.struts.action.ActionForm
{
    
    private int selectb;
private float  selectmid;
private float selectlid;
private int selecttt;
private int selectst;
private String t3;
private int t2;

    public int getSelectb() {
        return selectb;
    }

    public void setSelectb(int selectb) {
        this.selectb = selectb;
    }

    public float getSelectlid() {
        return selectlid;
    }

    public void setSelectlid(float selectlid) {
        this.selectlid = selectlid;
    }

    public float getSelectmid() {
        return selectmid;
    }

    public void setSelectmid(float selectmid) {
        this.selectmid = selectmid;
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

    public int getT2() {
        return t2;
    }

    public void setT2(int t2) {
        this.t2 = t2;
    }

    public String getT3() {
        return t3;
    }

    public void setT3(String t3) {
        this.t3 = t3;
    }

   
public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();

             i= st.executeUpdate("update team_trans_master set Team_Name='"+t3+"',Branch_Id="+selectb+",TeamManagerId="+selectmid+",TeamLeaderId="+selectlid+",Team_Type_Id="+selecttt+",Status_Id="+selectst+" where Team_Id="+t2+"");
            System.out.print("hello 22");
           st.close();
           c.close();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In edit_team Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int edit team tBean ");
            }
     return i;
    }

}
