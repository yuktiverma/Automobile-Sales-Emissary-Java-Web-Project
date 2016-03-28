
package conn;

import java.sql.*;
/**
 *
 * @author Yukti
 */
public class GetDBConnection {

     public static Connection getDBConnection()
    {
         Connection con=null;
       try
       {
      Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ase","root","password");

        }
       catch(ClassNotFoundException c1)
       {
           System.out.println("class not found");
       }
       catch(SQLException c1)
       {
           System.out.println("sql link problem");
       }
         catch(Exception e)
       {
         System.out.print("Other exception in get connection class");

         }
       return con;
    }


}
