package Functions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RememberAccount {
    Connection conn = Database.Db_conn.conn();
    PreparedStatement pst;
    ResultSet rs;

    public String check(){
        try{
            String qeury = "SELECT Admins.ID FROM Admins WHERE AdminNo = '1';";
            pst = conn.prepareStatement(qeury);
            rs = pst.executeQuery();
            if(rs.next()){
                String adminNo = rs.getString(1);
                if(!adminNo.matches("000000")){
                    return adminNo;
                }
            }
        }catch(Exception error){
            System.out.println(error);
        }
       return "Dont Remember";
    }
    
    public void setRemember(String id, String username, String password){
        try{
            String query;
            if(username.isBlank()){
                query = "UPDATE Admins SET ID = '000000', Username = '', Password = '' WHERE AdminNo = '1'";
            }else{
                query = "UPDATE Admins SET ID = '" +id +"', Username = '" +username +"', Password = '" +password +"' WHERE AdminNo = '1'";
            }
            pst = conn.prepareStatement(query);
            pst.execute();
        }catch(Exception error){
            System.out.println(error);
        }
    }
}
