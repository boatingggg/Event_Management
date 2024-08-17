package com.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.bean.BookNowBean;
import com.web.dao.BookNowDao;
import com.web.dao.OnlinePaymentId;
import com.web.dao.SendMail;

/**
 * Servlet implementation class bookingEvent
 */
@WebServlet("/bookingEvent")
public class bookingEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookingEvent() {
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
		
		Integer Numberofguest=0,booking_days=0;
		String booking_status,booking_name,booking_starting_date,booking_ending_date,message,phone_num, useremail,venue,event_name;
		
		booking_status = request.getParameter("book_status").toString();
		booking_starting_date = request.getParameter("booking_starting_date").toString();
		booking_ending_date = request.getParameter("booking_ending_date").toString();
		booking_name = request.getParameter("name").toString();
		message = request.getParameter("message").toString();
		useremail = request.getParameter("email").toString();
		phone_num = request.getParameter("phone").toString();
		venue = request.getParameter("venue").toString();
		event_name = request.getParameter("event_name").toString();
		Numberofguest = Integer.parseInt(request.getParameter("people").toString());
	//	booking_days = Integer.parseInt(request.getParameter("days").toString());
		
		BookNowBean bean = new BookNowBean();
		bean.setNumberofguest(Numberofguest);
		bean.setBooking_days(booking_days);
		bean.setBooking_status(booking_status);
		bean.setBooking_starting_date(booking_starting_date);
		bean.setBooking_ending_date(booking_ending_date);
	
		bean.setVenue(venue);
		bean.setEvent_name(event_name);
		bean.setBooking_name(booking_name);
		bean.setMessage(message);	
		bean.setPhone_num(phone_num);
		bean.setBook_emil(useremail);
		int returnValue = BookNowDao.bookNow(bean);
		//returnValue = 0 then Error, 1 = Success, 2 = Already Booked
		if(returnValue == 1){
			int amount = Integer.parseInt(request.getParameter("amountId").toString());
			String orderId = OnlinePaymentId.getOrderId(amount);
			request.setAttribute("orderId", orderId);

			SendMail.send("projectforjava2023@gmail.com","uaukpxmsckdojzha",useremail,"Booking Event","Event Booking successfully on date of "+booking_starting_date + " "+booking_ending_date); 
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		if(returnValue == 2){
			request.setAttribute("message", "Already Booked at this date");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}			

	}

}
