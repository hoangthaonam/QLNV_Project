package model;

import java.sql.ResultSet;

public class Employee extends Database{
	public ResultSet getEmployee() {
		String sql = "SELECT * FROM employee";
		ResultSet result = this.querry(sql);
		return result;
	}
}
