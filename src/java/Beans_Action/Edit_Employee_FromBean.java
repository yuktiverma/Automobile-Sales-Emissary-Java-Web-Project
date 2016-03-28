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
public class Edit_Employee_FromBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private String t2;
    private String t3;
    private String t4;
    private String t5;
    private String t6;
    private String t7;
    private String t8;
    private String t9;
    private String t11;
    private String t10;
    private String t12;
    private String t13;
    private String t14;
    private String t15;
    private String selectc;
    private String selects;
    private String selectct;
    private String selectc1;
    private String selects1;
    private String selectct1;
    private int selectd;
    private String t17;
    private String t18;
    private int  selectb;
    private int selectacc;
    private int selectacc1;
    private int selectst;

    public int getSelectacc() {
        return selectacc;
    }

    public void setSelectacc(int selectacc) {
        this.selectacc = selectacc;
    }

    public int getSelectacc1() {
        return selectacc1;
    }

    public void setSelectacc1(int selectacc1) {
        this.selectacc1 = selectacc1;
    }

    public int getSelectb() {
        return selectb;
    }

    public void setSelectb(int selectb) {
        this.selectb = selectb;
    }

    public String getSelectc() {
        return selectc;
    }

    public void setSelectc(String selectc) {
        this.selectc = selectc;
    }

    public String getSelectc1() {
        return selectc1;
    }

    public void setSelectc1(String selectc1) {
        this.selectc1 = selectc1;
    }

    public String getSelectct() {
        return selectct;
    }

    public void setSelectct(String selectct) {
        this.selectct = selectct;
    }

    public String getSelectct1() {
        return selectct1;
    }

    public void setSelectct1(String selectct1) {
        this.selectct1 = selectct1;
    }

    public int getSelectd() {
        return selectd;
    }

    public void setSelectd(int selectd) {
        this.selectd = selectd;
    }

    

    public String getSelects() {
        return selects;
    }

    public void setSelects(String selects) {
        this.selects = selects;
    }

    public String getSelects1() {
        return selects1;
    }

    public void setSelects1(String selects1) {
        this.selects1 = selects1;
    }

    public int getSelectst() {
        return selectst;
    }

    public void setSelectst(int selectst) {
        this.selectst = selectst;
    }

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

    public String getT10() {
        return t10;
    }

    public void setT10(String t10) {
        this.t10 = t10;
    }

    public String getT11() {
        return t11;
    }

    public void setT11(String t11) {
        this.t11 = t11;
    }

    public String getT12() {
        return t12;
    }

    public void setT12(String t12) {
        this.t12 = t12;
    }

    public String getT13() {
        return t13;
    }

    public void setT13(String t13) {
        this.t13 = t13;
    }

    public String getT14() {
        return t14;
    }

    public void setT14(String t14) {
        this.t14 = t14;
    }

    public String getT15() {
        return t15;
    }

    public void setT15(String t15) {
        this.t15 = t15;
    }

    public String getT17() {
        return t17;
    }

    public void setT17(String t17) {
        this.t17 = t17;
    }

    public String getT18() {
        return t18;
    }

    public void setT18(String t18) {
        this.t18 = t18;
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

    public String getT8() {
        return t8;
    }

    public void setT8(String t8) {
        this.t8 = t8;
    }

    public String getT9() {
        return t9;
    }

    public void setT9(String t9) {
        this.t9 = t9;
    }



    
     public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
             
             i= st.executeUpdate("update employee_master set Emp_Code="+t2+",Branch_Id="+selectb+",Emp_Fname='"+t3+"',Emp_Lname='"+t4+"',Current_StreetAddress='"+t6+"',Current_City='"+selectct+"',Current_State='"+selects+"',Current_Country='"+selectc+"',Current_ZipCode='"+t5+"',Current_Phone1='"+t7+"',Current_Phone2='"+t8+"',Current_Mobile='"+t9+"',Perm_StreetAddress='"+t11+"',Perm_City='"+selectct1+"',Perm_State='"+selects1+"',Perm_Country='"+selectc1+"',Perm_ZipCode='"+t10+"',Perm_Phone1='"+t12+"',Perm_Phone2='"+t13+"',Perm_Mobile='"+t14+"',Status_Id="+selectst+",Email='"+t15+"',AccessTo_All_Branches="+selectacc+",AccessTo_All_Teams="+selectacc1+",DateOf_Leaving='"+t18+"',DateOf_Joining='"+t17+"',Desig_Id="+selectd+" where Emp_Id="+t1+"");
            
           st.close();
           c.close();

        }
         catch(SQLException se)
            {
            System.out.println("sql exception...In edit_employee Bean"+se.getMessage());
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int edit employee tBean ");
            }
     return i;
    }

    
}
