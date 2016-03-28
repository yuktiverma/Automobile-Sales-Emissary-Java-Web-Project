package Beans_Action;
import java.sql.*;
import conn.GetDBConnection;
/**
 *
 * @author Yukti
 */
public class EditBaseModelBean extends org.apache.struts.action.ActionForm
{
    private int t1;
    private String t2;
    private Float t3;

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

    public Float getT3() {
        return t3;
    }

    public void setT3(Float t3) {
        this.t3 = t3;
    }

    public  int editData()
    {
        int i=0;
     try
        {
             Connection c=GetDBConnection.getDBConnection();
              Statement st=c.createStatement();
             i= st.executeUpdate("update basemodel_master set BaseModel_Name='"+t2+"', Acc_Target="+t3+" where BaseModel_Id="+t1+"");
             System.out.print("hello 22");
            st.close();
            c.close();
        }
         catch(SQLException se)
            {
            System.out.print("SqlException in BaseModelBean" + se);
            }
         catch(Exception e)
             {
         System.out.print("OtherException in BaseModelBean" + e);
            }
     return i;
    }
}
