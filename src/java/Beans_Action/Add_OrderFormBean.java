/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import java.sql.*;
/**
 *
 * @author Yukti
 */
public class Add_OrderFormBean extends org.apache.struts.action.ActionForm
{
   
    private int prosid;
    private int empid;
    private int fsmid;
    private int modid;
    private int colid;
    private int invid;
    private int nopord;
    private String date;
    private int status;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getColid() {
        return colid;
    }

    public void setColid(int colid) {
        this.colid = colid;
    }
   
 

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public int getInvid() {
        return invid;
    }

    public void setInvid(int invid) {
        this.invid = invid;
    }

    public int getModid() {
        return modid;
    }

    public void setModid(int modid) {
        this.modid = modid;
    }

    public int getNopord() {
        return nopord;
    }

    public void setNopord(int nopord) {
        this.nopord = nopord;
    }

    public int getProsid() {
        return prosid;
    }

    public int getFsmid() {
        return fsmid;
    }

    public void setFsmid(int fsmid) {
        this.fsmid = fsmid;
    }

    public void setProsid(int prosid) {
        this.prosid = prosid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

   public  int insertData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into order_booking_master values(null,?,?,?,?,?,?,?,?,?)");
             pstmt.clearParameters();

             pstmt.setInt(1,prosid);
             pstmt.setInt(2,empid);
             pstmt.setInt(3,fsmid);
             pstmt.setInt(4,modid);
             pstmt.setInt(5,colid);
             pstmt.setInt(6,invid);
             pstmt.setInt(7,nopord);
             pstmt.setString(8,date);
             pstmt.setInt(9,status);
             System.out.println("hello");

             i= pstmt.executeUpdate();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...from add order Bean" +se.getMessage());
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception from add order Bean ");
            }
     return i;
    }




}
