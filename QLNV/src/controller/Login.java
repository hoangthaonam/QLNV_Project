package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;

@WebServlet(urlPatterns = {"/login"})
public class Login extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String error = req.getParameter("error");
		req.setAttribute("error", error);
		req.setAttribute("page", "Login.jsp");
		RequestDispatcher rd = req.getRequestDispatcher("layout.jsp");
		rd.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter wr = resp.getWriter();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		Account a = new Account();
		if(a.checkLogin(username, password)==true) {
			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			resp.sendRedirect("http://localhost:8080/QLNV/home");
		} else {
			req.setAttribute("error", "<div class=\"alert alert-danger\" role=\"alert\">\r\n" + 
					"                        Incorrect username or password!\r\n" + 
					"                    </div>");
			req.setAttribute("page", "Login.jsp");
			req.getRequestDispatcher("layout.jsp").forward(req, resp);
		}
	}
}
