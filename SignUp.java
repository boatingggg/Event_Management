package com.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.bean.SignUpBean;
import com.web.dao.SignUpDao;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String useraddress, usercontact, userdob, useremail, userfname, usergender, userlname, userpassword, userphoto, user_type_id;

		useraddress = request.getParameter("useraddress").toString();
		usercontact = request.getParameter("usercontact").toString();
		userdob = request.getParameter("userdob").toString();
		useremail = request.getParameter("useremail").toString();
	//	useremail = request.getParameter("email").toString();
		userfname = request.getParameter("userfname").toString();
		userlname = request.getParameter("userlname").toString();
		usergender = request.getParameter("usergender").toString();
		userpassword = request.getParameter("userpassword").toString();
		
//		userphoto = request.getParameter("userphoto").toString();
	//	user_type_id = request.getParameter("user_type_id").toString();
		
		SignUpBean bean = new SignUpBean();
		bean.setUseraddress(useraddress);
		bean.setUsercontact(usercontact);
		bean.setUserdob(userdob);
		bean.setUseremail(useremail);
	//	bean.setUseremail(useremail);
		bean.setUserfname(userfname);
		bean.setUserlname(userlname);
		bean.setUsergender(usergender);
		bean.setUserpassword(userpassword);
//		bean.setUserphoto(userphoto);
	//	bean.setUser_type_id(user_type_id);
		
		SignUpDao.signUp(bean);
		response.sendRedirect("Login.jsp");
	}

}
