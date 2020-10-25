package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {
    static Connection con = null; 
    Database(){
    	try {
			Class.forName("org.sqlite.JDBC");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			con = DriverManager.getConnection("jdbc:sqlite:D:\\Store\\DB.db");
			if(con!=null) {
				System.out.println("Connected");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    };
    
    public ResultSet querry(String sql) {
    	ResultSet result = null;
    	try {
			PreparedStatement prepare = con.prepareStatement(sql);
			result = prepare.executeQuery();
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return result;
    }
    
}