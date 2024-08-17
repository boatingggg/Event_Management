package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.web.bean.BookNowBean;
import com.web.bean.LoggerInfo;
import com.web.bean.SignUpBean;

public class BookNowDao {
	public static int bookNow(BookNowBean bean) {
		int returnvalue = 0;
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "SELECT * FROM `booking` WHERE bookingstartingdate = ?";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ps.setString(1, bean.getBooking_starting_date());

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				returnvalue = 2;
			}

			if(returnvalue == 0){
				String insertQuery = "INSERT INTO `booking`(`numberofguest`, `bookingdays`, `bookigemail`, `bookingendingdate`, `booking_name`, `bookingstartingdate`, `bookingstatus`, `event_id`, `event_name`, `id`, `message`, `phonenum`, `user_master_id`, `venue`) VALUES "
						+ "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				System.out.println(insertQuery);
				PreparedStatement ps1 = conn.prepareStatement(insertQuery);
				ps1.setInt(1, bean.getNumberofguest());
				ps1.setInt(2, bean.getBooking_days());
				ps1.setString(3, bean.getBook_emil());
				ps1.setString(4, bean.getBooking_ending_date());
				ps1.setString(5, bean.getBooking_name());
				ps1.setString(6, bean.getBooking_starting_date());
			
				ps1.setString(7, bean.getBooking_status());
				ps1.setInt(8, 13);
				ps1.setString(9, bean.getEvent_name());
				ps1.setInt(10, 6);
				ps1.setString(11, bean.getMessage());
				ps1.setString(12, bean.getPhone_num());			
				ps1.setInt(13, 3);
				ps1.setString(14, bean.getVenue());
				returnvalue = ps1.executeUpdate();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return returnvalue;
		}
		return returnvalue;
	}
}
	
/*	public static LoggerInfo loginCheck(String userName, String userPassword){
		LoggerInfo info = null;
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "select * from usermaster where user_email = ? and user_password = ?";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ps.setString(1, userName);
			ps.setString(2, userPassword);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				info = new LoggerInfo();
				info.setContact(rs.getString("user_contact"));
				info.setEmail(rs.getString("user_email"));
				info.setFullname(rs.getString("user_fname") + " " +rs.getString("user_c1lname"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return info;
	}
	
	public static LoggerInfo loginCheck(String userName){
		LoggerInfo info = new LoggerInfo();
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "select * from usermaster where user_email = ?";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ps.setString(1, userName);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				info.setContact(rs.getString("user_contact"));
				info.setEmail(rs.getString("user_email"));
				info.setFullname(rs.getString("user_fname") + " " +rs.getString("user_lname"));
				info.setPassword(rs.getString("user_password"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return info;
	}

}  */
