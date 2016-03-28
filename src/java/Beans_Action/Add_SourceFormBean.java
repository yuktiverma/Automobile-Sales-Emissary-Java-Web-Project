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
public class Add_SourceFormBean extends org.apache.struts.action.ActionForm
{
    private String srcn;
    private String srcd;

    public String getSrcd() {
        return srcd;
    }

    public void setSrcd(String srcd) {
        this.srcd = srcd;
    }

    public String getSrcn() {
        return srcn;
    }

    public void setSrcn(String srcn) {
        this.srcn = srcn;
    }


public  int insertData()
    {
       System.out.print("helllo");
       int i=0;
     try
        {


             Connection c=conn.GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into source_master values(null,?,?)");
             pstmt.clearParameters();

             pstmt.setString(1,srcn);
             pstmt.setString(2,srcd);

             i= pstmt.executeUpdate();
             System.out.print("hello");

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
