package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;


/**
 *
 * @author Yukti
 */
public class DeleteBaseModelBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private String t2;
    private float t3;

    public int getT1() {
        return t1;
    }

    public void setT1(int t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

    public float getT3() {
        return t3;
    }

    public void setT3(float t3) {
        this.t3 = t3;
    }

    public int deleteData()
    {
        int i=0;
        try
        {
        i=0;
        Connection con=GetDBConnection.getDBConnection();
        Statement st=con.createStatement();
        i=st.executeUpdate("delete from basemodel_master where BaseModel_Id="+t1+"");
        }
        catch(SQLException se)
        {
        System.out.print("SqlException in DeleteBaseModelBean" + se);
        return i;
        }
        return i;
    }
}
