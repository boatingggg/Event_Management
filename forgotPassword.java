package com.web.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.bean.LoggerInfo;
import com.web.dao.SendMail;
//import com.web.dao.SendMailSSL;
import com.web.dao.SignUpDao;

/**
 * Servlet implementation class forgotPassword
 */
@WebServlet("/forgotPassword")
public class forgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hello...");
	     String userName = request.getParameter("email").toString();
	//    String useremail = request.getParameter("useremail").toString();
		LoggerInfo info = SignUpDao.loginCheck(userName);
	//	SendMailSSL.send("asthadhorajiya1509@gmail.com","ptajovuwrxqrhjgf",userName,"Forgot Password","Your Password is "+info.getPassword()); 
		
		SendMail.send("projectforjava2023@gmail.com","uaukpxmsckdojzha",userName,"Forgot Password","Your Password is "+info.getPassword()); 
		
		
		request.setAttribute("message", "Password successfully send to your mail.");
		RequestDispatcher rd = request.getRequestDispatcher("forgetpassword.jsp");
		rd.forward(request, response);
	}

}
