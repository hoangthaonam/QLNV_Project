package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/validateLogin"})
public class ValidateLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("username");
		if(username.length()<3 && username.length()>0) {
			PrintWriter wr = resp.getWriter();
			wr.print("<div class=\"alert alert-danger\" role=\"alert\">\r\n" + 
					"                        The length of username must be in range [3,10]\r\n" + 
					"                    </div>");
		}
	}
}
