/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Main;
import java.sql.Connection;
/**
 *
 * @author crissa jean pagapong
 */
public class Main {
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        checkRemembered();
    }
    
    public static void run(){
        checkRemembered();
    }
    
    public static void checkRemembered(){
        boolean isDatabaseOK = new Functions.CheckDatabaseStatus().CheckDatabaseStats();
        String adminID = new Functions.RememberAccount().check();
        
        if(isDatabaseOK && !adminID.matches("Dont Remember")){
            new MainSystem.Home(adminID, true).setVisible(true);
        }else{
            new MainSystem.LogIn().setVisible(true);
        }
    }
}
