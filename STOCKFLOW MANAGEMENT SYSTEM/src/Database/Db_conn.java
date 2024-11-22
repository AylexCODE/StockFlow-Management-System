package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Db_conn {
    public static Connection conn(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/StockFlow_Management_System", "root", "");
            return conn;
        }catch(SQLException | ClassNotFoundException err){
            System.out.println(err);
        }
        return null;
    }
}
