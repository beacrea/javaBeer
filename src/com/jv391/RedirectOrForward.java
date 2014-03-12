package com.jv391;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectOrForward
 */
@WebServlet({ "/RedirectOrForward", "/rof" })
public class RedirectOrForward extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// This takes a look at the difference between redirects and dispatchers.
		// response.sendRedirect("/JV391/Test?color=amber");
		RequestDispatcher rd = request.getRequestDispatcher("test.jsp");
		rd.forward(request, response);
	}

}
