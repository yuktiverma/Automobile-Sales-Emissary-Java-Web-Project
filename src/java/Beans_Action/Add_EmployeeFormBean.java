
package Beans_Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.sql.*;
import conn.GetDBConnection;

/**
 *
 * @author Yukti */
public class Add_EmployeeFormBean extends org.apache.struts.action.ActionForm
{
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
    private String selectd;
    private String t17;
    private String t18;
    private int  selectb;
    private int selectacc;
    private int selectacc1;
    private int selectst;


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

    public int getSelectst() {
        return selectst;
    }

    public void setSelectst(int selectst) {
        this.selectst = selectst;
    }
    

    public String getT15() {
        return t15;
    }

    public void setT15(String t15) {
        this.t15 = t15;
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

    public String getSelectd() {
        return selectd;
    }

    public void setSelectd(String selectd) {
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


    public  int insertData()
    {
        int i=0;
     try
        {

            System.out.println("hello 00");
             Connection c=GetDBConnection.getDBConnection();
             System.out.println("hello 01");
             PreparedStatement pstmt=c.prepareStatement("insert into employee_master values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
             pstmt.clearParameters();
             System.out.println("hello 11");
             pstmt.setString(1,t2);
             pstmt.setInt(2, selectb);
             pstmt.setString(3,t3);
             pstmt.setString(4,t4);
             pstmt.setString(5,t6);
             pstmt.setString(6,selectct);
             pstmt.setString(7,selects);
             pstmt.setString(8,t5);
             pstmt.setString(9,selectc);
             pstmt.setString(10,t7);
             pstmt.setString(11,t8);
              pstmt.setString(12,t9);
             pstmt.setString(13,t11);
             pstmt.setString(14,selectct1);
             pstmt.setString(15,selects1);
             pstmt.setString(16,t10);
             pstmt.setString(17,selectc1);
             pstmt.setString(18,t12);
             pstmt.setString(19,t13);
             pstmt.setString(20,t14);
             pstmt.setString(21,t15);
             
             pstmt.setString(22,t17);
             pstmt.setString(23,t18);
             pstmt.setInt(24,selectacc);
             pstmt.setInt(25,selectacc1);
              pstmt.setInt(26,selectst);
               pstmt.setString(27,selectd);
             i= pstmt.executeUpdate();
             System.out.println("hello 22");
        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add_employee Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int add employee Bean ");
            }
     return i;
    }



}
