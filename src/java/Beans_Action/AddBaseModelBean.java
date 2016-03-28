package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;
/**
 *
 * @author Yukti
 */
public class AddBaseModelBean extends org.apache.struts.action.ActionForm
{
    private String t1;
    private Float t2;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public Float getT2() {
        return t2;
    }

    public void setT2(Float t2) {
        this.t2 = t2;
    }

    public  int insertData()
    {
        int i=0;
        try
        {
             Connection c=GetDBConnection.getDBConnection();
             PreparedStatement pstmt=c.prepareStatement("insert into basemodel_master values(null,?,?)");
             System.out.println("Hello1");
             pstmt.clearParameters();
             pstmt.setString(1,t1);
             pstmt.setFloat(2,t2);
             i= pstmt.executeUpdate();
             System.out.println("Hello1");
        }
        catch(SQLException se)
            {
                System.out.print("SQLException in addBaseModel : " + se);
            }
        catch(Exception ex)
            {
                System.out.print("OtherException in addBaseModel : " + ex);
            }
     return i;
    }
}
