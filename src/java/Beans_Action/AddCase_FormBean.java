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
public class AddCase_FormBean extends org.apache.struts.action.ActionForm
{
    
  private int select;
  private int select1;
  private int select2;
  private int select3;
  private int select4;
  private int select5;
  private int select6;
  private int select7;
  private String t1;
  private String t2;
  private String t3;
  private String t4;
  private String ta1;

    public int getSelect() {
        return select;
    }

    public void setSelect(int select) {
        this.select = select;
    }

    public int getSelect1() {
        return select1;
    }

    public void setSelect1(int select1) {
        this.select1 = select1;
    }

    public int getSelect2() {
        return select2;
    }

    public void setSelect2(int select2) {
        this.select2 = select2;
    }

    public int getSelect3() {
        return select3;
    }

    public void setSelect3(int select3) {
        this.select3 = select3;
    }

    public int getSelect4() {
        return select4;
    }

    public void setSelect4(int select4) {
        this.select4 = select4;
    }

    public int getSelect5() {
        return select5;
    }

    public void setSelect5(int select5) {
        this.select5 = select5;
    }

    public int getSelect6() {
        return select6;
    }

    public void setSelect6(int select6) {
        this.select6 = select6;
    }

    public int getSelect7() {
        return select7;
    }

    public void setSelect7(int select7) {
        this.select7 = select7;
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

    public String getTa1() {
        return ta1;
    }

    public void setTa1(String ta1) {
        this.ta1 = ta1;
    }

  public  int insertData()
    {
        int i=0;
     try
        {


             Connection c=GetDBConnection.getDBConnection();
             System.out.println("hello 11");
             PreparedStatement pstmt=c.prepareStatement("insert into case_detail_master values(null,?,?,?,?,?,?,?,?,?,?,?,?,?)");
             System.out.println("hello 11");
             pstmt.clearParameters();
                pstmt.setInt(1,select);
             pstmt.setInt(2,select1);
             pstmt.setInt(3,select2);
             pstmt.setInt(4,select5);
             pstmt.setString(5, t2);
             pstmt.setInt(6,select6);
             pstmt.setString(7, t3);
             pstmt.setInt(8,select3);
             pstmt.setInt(9,select4);
             pstmt.setString(10, t1);
             pstmt.setString(11, t4);
             pstmt.setString(12, ta1);
             pstmt.setInt(13,select7);
              System.out.println("hello");

             i= pstmt.executeUpdate();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...In add_case Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception int case Bean ");
            }
     return i;
    }













}
