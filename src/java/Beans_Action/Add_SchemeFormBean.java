/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Yukti
 */
public class Add_SchemeFormBean extends org.apache.struts.action.ActionForm
{
    private int schmfor;
    private int discper;
    private int srcid;
    private int modid;
    private int colid;
    private String fdate;
    private String tdate;

    public int getColid() {
        return colid;
    }

    public void setColid(int colid) {
        this.colid = colid;
    }

    public int getDiscper() {
        return discper;
    }

    public void setDiscper(int discper) {
        this.discper = discper;
    }

    public String getFdate() {
        return fdate;
    }

    public void setFdate(String fdate) {
        this.fdate = fdate;
    }

    public int getModid() {
        return modid;
    }

    public void setModid(int modid) {
        this.modid = modid;
    }

    public int getSchmfor() {
        return schmfor;
    }

    public void setSchmfor(int schmfor) {
        this.schmfor = schmfor;
    }

    public int getSrcid() {
        return srcid;
    }

    public void setSrcid(int srcid) {
        this.srcid = srcid;
    }

    public String getTdate() {
        return tdate;
    }

    public void setTdate(String tdate) {
        this.tdate = tdate;
    }

public  int insertData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into scheme_master values(null,?,?,?,?,?,?,?)");
             pstmt.clearParameters();

             pstmt.setInt(1,schmfor);
             pstmt.setInt(2,discper);
             pstmt.setInt(3,srcid);
             pstmt.setInt(4,modid);
             pstmt.setInt(5,colid);
             pstmt.setString(6,fdate);
             pstmt.setString(7,tdate);
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
