/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import conn.GetDBConnection;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.util.*;

/**
 *
 * @author Yukti
 */
public class InventoryReportByMonth extends org.apache.struts.action.ActionForm {

    private int selectmonth;

private  int  selectyear;

 private ArrayList<InventoryByYear> al;

    public int getSelectyear() {
        return selectyear;
    }

    public int getSelectmonth() {
        return selectmonth;
    }

    public void setSelectmonth(int selectmonth) {
        this.selectmonth = selectmonth;
    }

    public void setSelectyear(int selectyear) {
        this.selectyear = selectyear;
    }

    public ArrayList<InventoryByYear> getAl() {
        return al;
    }

    public void setAl(ArrayList<InventoryByYear> al) {
        this.al = al;
    }

    ArrayList<InventoryByYear> display()
    {
         ArrayList<InventoryByYear> al1=new ArrayList<InventoryByYear>();

          try
    {


   Connection c= GetDBConnection.getDBConnection();
   Statement st= c.createStatement();
   ResultSet rs=st.executeQuery("select * from branch_allocation_master where year(inv_allocation_date)="+selectyear+" && month(inv_allocation_date)="+selectmonth+" ");
 while(rs.next())
{
        al1.add(new InventoryByYear(rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getInt(9),rs.getString(10)));
 }
        }
          catch(SQLException e)
    {
    System.out.println("SQL from InventoryReport By Year "+e.getMessage()+e.getSQLState());

}
    catch(Exception e)
    {
        System.out.println("exception from InventoryReport By Year");
    }

         return al1;
    }
}
