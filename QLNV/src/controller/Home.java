package controller;


import model.Employee;
import model.EmployeeModel;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/home"})
public class Home extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Employee em = new Employee();
		ResultSet employees = em.getEmployee();
		req.setAttribute("emloyees", employees);
		req.setAttribute("page", "Home.jsp");
		req.getRequestDispatcher("layout.jsp").forward(req, resp);
	}
}
