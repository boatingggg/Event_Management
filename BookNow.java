package com.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.bean.BookNowBean;

import com.web.dao.BookNowDao;


public class BookNow extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookNow() {
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
		Integer Numberofguest;
		String booking_status,booking_ending_date,booking_starting_date,booking_name,message,phone_num;
		
		booking_status = request.getParameter("booking_time").toString();
		booking_ending_date = request.getParameter("booking_ending_date").toString();
		booking_starting_date = request.getParameter("booking_starting_date").toString();
		booking_name = request.getParameter("booking_name").toString();
		message = request.getParameter("message").toString();
	//	useremail = request.getParameter("email").toString();
		phone_num = request.getParameter("phone_num").toString();
	//	Numberofguest = request.getParameter("Numberofguest").toInteger();
		
		BookNowBean bean = new BookNowBean();
		bean.setBooking_status(booking_status);
		bean.setBooking_starting_date(booking_starting_date);
		bean.setBooking_ending_date(booking_ending_date);
		bean.setBooking_name(booking_name);
		bean.setMessage(message);
	
		bean.setPhone_num(phone_num);
	//	bean.setNumberofguest(Numberofguest);
		
		BookNowDao.bookNow(bean);
		response.sendRedirect("Index.jsp");
	}


}
