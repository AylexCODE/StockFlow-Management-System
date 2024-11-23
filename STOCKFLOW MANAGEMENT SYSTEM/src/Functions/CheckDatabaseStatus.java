package Functions;

import java.sql.Connection;

public class CheckDatabaseStatus {
    public boolean CheckDatabaseStats(){
        Connection conn = Database.Db_conn.conn();
        if(conn == null){
            return false;
        }
        return true;
    }
}
