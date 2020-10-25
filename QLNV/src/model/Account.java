package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Account extends Database {
	
	public boolean checkLogin(String username, String password) {
		String sql = "SELECT * FROM account WHERE username = '"+ username +"' "
				+ "AND password = '"+password+"'";
		ResultSet result = this.querry(sql);	
		int count = 0;
		try {
			while(result.next()==true) {
				count++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(count!=0) return true;
		else return false;
	}
	public void dosthing() {
		System.out.println("Do something");
	}
//	public static void main(String[] args) throws SQLException {
//		Account account = new Account();
//		int result = account.checkLogin("nam", "123");
////		int count = 0;
////		while(result.next()==true) {
////			count++;
////		}
//		System.out.println("something");
//		System.out.println(result);
//	}
}
