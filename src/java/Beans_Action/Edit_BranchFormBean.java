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
public class Edit_BranchFormBean extends org.apache.struts.action.ActionForm
{
    
   private  String selecto;
    private  String t1;
    private  String t2;
    private  String selectc;
    private  String selects;
    private  String t3;
    private  String selectct;
    private  String t4;
    private  String t5;
    private  String t7;
    private  String selectst;
    private  int  t11;

    public String getSelectc() {
        return selectc;
    }

    public void setSelectc(String selectc) {
        this.selectc = selectc;
    }

    public String getSelectct() {
        return selectct;
    }

    public void setSelectct(String selectct) {
        this.selectct = selectct;
    }

    public String getSelecto() {
        return selecto;
    }

    public void setSelecto(String selecto) {
        this.selecto = selecto;
    }

    public String getSelects() {
        return selects;
    }

    public void setSelects(String selects) {
        this.selects = selects;
    }

    public String getSelectst() {
        return selectst;
    }

    public void setSelectst(String selectst) {
        this.selectst = selectst;
    }

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public int getT11() {
        return t11;
    }

    public void setT11(int t11) {
        this.t11 = t11;
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

    public String getT4() {
        return t4;
    }

    public void setT4(String t4) {
        this.t4 = t4;
    }

    public String getT5() {
        return t5;
    }

    public void setT5(String t5) {
        this.t5 = t5;
    }

    public String getT7() {
        return t7;
    }

    public void setT7(String t7) {
        this.t7 = t7;
    }

    public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
 
             i= st.executeUpdate("update branch_master set Branch_Name='"+t1+"',Branch_StreetAddress='"+t2+"',Branch_City='"+selectct+"',Branch_State='"+selects+"',Branch_Country='"+selectc+"',Branch_ZipCode='"+t3+"',Branch_Phone1='"+t4+"',Branch_Phone2='"+t5+"',Branch_Fax='"+t7+"',Status_Id='"+selectst+"' where Branch_Id="+t11+"");
            System.out.print("hello 22");
           st.close();
           c.close();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In edit_branch Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int edit branch  tBean ");
            }
     return i;
    }

}
