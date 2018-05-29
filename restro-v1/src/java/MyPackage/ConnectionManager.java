/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyPackage;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Aaditya
 */
public class ConnectionManager {
    
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
/*    
    public static void main(String [] args){
        getConnection();
    }
*/  
    private void getConnection() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restro","root","");
        
    }
    
    public static void main(String[] args) {
        try{
            new ConnectionManager().getConnection();
            
        }
        catch(Exception e){
            System.out.println(e);
        }
        
    }
    
    public boolean executeNonQuery(String query){
        try{
            getConnection();
            ps = con.prepareStatement(query);
            int i = ps.executeUpdate();
            return true;
        }
        catch(SQLException | ClassNotFoundException sql){
            return false;
        }
    }
    
    public ResultSet selectQuery(String query) throws SQLException, ClassNotFoundException{
        getConnection();
        ps = con.prepareStatement(query);
        rs = ps.executeQuery();
        return rs;
    }
}