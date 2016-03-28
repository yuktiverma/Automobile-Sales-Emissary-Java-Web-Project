
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
public class Add_Org_FormBean extends org.apache.struts.action.ActionForm

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


     public  int insertData()
    {
        int i=0;
     try
        {


             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into organization_master values(null,?,?,?,?,?,?,?,?,?,?)");
             pstmt.clearParameters();

             pstmt.setString(1,t1);
             pstmt.setString(2,t2);
             pstmt.setString(3,selectct);
             pstmt.setString(4,selects);
             pstmt.setString(5,t3);
             pstmt.setString(6,selectc);
             pstmt.setString(7,t4);
             pstmt.setString(8,t5);
             pstmt.setString(9,t7);
             pstmt.setString(10,t6);
             i= pstmt.executeUpdate();
             



        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add_organization Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception in add orgganization Bean ");
            }
     return i;
    }




}
