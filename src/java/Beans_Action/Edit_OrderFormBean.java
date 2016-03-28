/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class Edit_OrderFormBean extends org.apache.struts.action.ActionForm
{
    private int ordid;
    private int prosid;
    private int empid;
    private int fsmid;
    private int modid;
    private int colid;
    private int invid;
    private int nopord;
    private String date1;
    private int status;

    public int getColid() {
        return colid;
    }

    public void setColid(int colid) {
        this.colid = colid;
    }

    public String getDate1() {
        return date1;
    }

    public void setDate1(String date1) {
        this.date1 = date1;
    }

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public int getFsmid() {
        return fsmid;
    }

    public void setFsmid(int fsmid) {
        this.fsmid = fsmid;
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

    public int getOrdid() {
        return ordid;
    }

    public void setOrdid(int ordid) {
        this.ordid = ordid;
    }

    public int getProsid() {
        return prosid;
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
             PreparedStatement pstmt=c.prepareStatement("update order_booking_master set Prospect_Id=?, Emp_Id=?, Finance_Source_Map_Master_Id=?, Model_Id=?,Color_Id=?, Inventory_Id=?, No_Of_Product_Ordered=?, Order_Date=?, Status_Id=? where Order_Id=? ");
             pstmt.clearParameters();

             pstmt.setInt(1,prosid);
             pstmt.setInt(2,empid);
             pstmt.setInt(3,fsmid);
             pstmt.setInt(4,modid);
             pstmt.setInt(5,colid);
             pstmt.setInt(6,invid);
             pstmt.setInt(7,nopord);
             pstmt.setString(8,date1);
             pstmt.setInt(9,status);
             pstmt.setInt(10,ordid);
             System.out.println("hello");

             i= pstmt.executeUpdate();

        }
         catch(SQLException se)
            {
            System.out.print("sql exception...from add order Bean");
            }
         catch(Exception nm)
             {
         System.out.print("Other  exception from add order Bean ");
            }
     return i;
    }




}
