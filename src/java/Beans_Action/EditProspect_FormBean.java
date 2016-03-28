/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import conn.GetDBConnection;
import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class EditProspect_FormBean extends org.apache.struts.action.ActionForm
{
    private int s0;
    private int s1;
    private int s2;
    private int s3;
    private String t1;
    private String t2;
    private String ta1;
    private String selectct;
    private String selects;
    private String t3;
    private String s5;
    private int s6;
    private String t9;
    private String t10;
    private String t11;
    private String t13;
    private String t12;
    private int t4;
    private int t5;
    private String t6;
    private String s12;
    private int s4;
    private int s9;
    private String t14;
    private int s7;
    private int s8;
    private String t15;
    private String t7;
    private String t8;
    private String ta2;
    private int s10;
    private int s11;

    public int getS0() {
        return s0;
    }

    public void setS0(int s0) {
        this.s0 = s0;
    }

    public int getS1() {
        return s1;
    }

    public void setS1(int s1) {
        this.s1 = s1;
    }

    public int getS10() {
        return s10;
    }

    public void setS10(int s10) {
        this.s10 = s10;
    }

    public int getS11() {
        return s11;
    }

    public void setS11(int s11) {
        this.s11 = s11;
    }

    public String getS12() {
        return s12;
    }

    public void setS12(String s12) {
        this.s12 = s12;
    }

    public int getS2() {
        return s2;
    }

    public void setS2(int s2) {
        this.s2 = s2;
    }

    public int getS3() {
        return s3;
    }

    public void setS3(int s3) {
        this.s3 = s3;
    }

    public int getS4() {
        return s4;
    }

    public void setS4(int s4) {
        this.s4 = s4;
    }

    public String getS5() {
        return s5;
    }

    public void setS5(String s5) {
        this.s5 = s5;
    }

    public int getS6() {
        return s6;
    }

    public void setS6(int s6) {
        this.s6 = s6;
    }

    public int getS7() {
        return s7;
    }

    public void setS7(int s7) {
        this.s7 = s7;
    }

    public int getS8() {
        return s8;
    }

    public void setS8(int s8) {
        this.s8 = s8;
    }

    public int getS9() {
        return s9;
    }

    public void setS9(int s9) {
        this.s9 = s9;
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

    public int getT4() {
        return t4;
    }

    public void setT4(int t4) {
        this.t4 = t4;
    }

    public int getT5() {
        return t5;
    }

    public void setT5(int t5) {
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

    public String getTa1() {
        return ta1;
    }

    public void setTa1(String ta1) {
        this.ta1 = ta1;
    }

    public String getTa2() {
        return ta2;
    }

    public void setTa2(String ta2) {
        this.ta2 = ta2;
    }

    public  int editData()
    {
        String query=null;
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
             Statement st=c.createStatement();
             System.out.print("hello 11");
             query="update prospect_master set Branch_Id="+s1+",Status_Id="+s2+",Prospect_Type_Id="+s3+",Prospect_Fname='"+t1+"',Prospect_Lname='"+t2+"',P_StreetAddress='"+ta1+"',P_City='"+selectct+"',P_State='"+selects+"',P_ZipCode='"+t3+"',P_Country='"+s5+"',P_Area_Id="+s6+",P_Phone1='"+t9+"',P_Phone2='"+t10+"',P_Mobile='"+t11+"',P_Fax='"+t13+"',P_Email='"+t12+"',NoOfSimilarProducts_Owned="+t4+",NoOfOurProducts_Owned="+t5+",Model_Owned='"+t6+"',Income_Group='"+s12+"',Industry_Id="+s4+",Qualification_Id="+s9+",PlanTo_Buy_Date='"+t14+"',Model_To_Buy="+s7+",Color_To_Buy="+s8+",DateOf_Enquiry='"+t15+"',FollowUp_Date='"+t7+"',FollowUp_Time='"+t8+"',Notes='"+ta2+"',Assigned="+s10+",CreatedBy="+s11+" where Prospect_Id="+s0+"";
             i= st.executeUpdate(query);
            System.out.print("hello 22");
        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In edit_pros Bean"+query+":"+se.getMessage());
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception in edit_pros Bean ");
            }
     return i;
    }

}
