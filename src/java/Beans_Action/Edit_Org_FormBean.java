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
public class Edit_Org_FormBean extends org.apache.struts.action.ActionForm
{
private  String t1;
private  String t2;
private  String selectc;
private  String selects;
private  String t3;
private  String selectct;
private  String t4;
private  String t5;
private  String t6;
private  String t7;
private  int  t10;

    public String getSelectc() {
        return selectc;
    }

    public int getT10() {
        return t10;
    }

    public void setT10(int t10) {
        this.t10 = t10;
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

    public String getSelects() {
        return selects;
    }

    public void setSelects(String selects) {
        this.selects = selects;
    }

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

    public String getT6() {
        return t6;
    }

    public void setT6(String t6) {
        this.t6 = t6;
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

             i= st.executeUpdate("update organization_master set Org_Name='"+t1+"',Org_StreetAddress='"+t2+"',Org_City='"+selectct+"',Org_State='"+selects+"',Org_Country='"+selectc+"',Org_ZipCode='"+t3+"',Org_Phone1='"+t4+"',Org_Phone2='"+t5+"',Org_Fax='"+t7+"',Org_Email='"+t6+"' where Org_Id="+t10+"");

           st.close();
           c.close();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In edit_org Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int edit org tBean ");
            }
     return i;
    }


   
}
