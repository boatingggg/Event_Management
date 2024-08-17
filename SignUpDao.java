package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.web.bean.LoggerInfo;
import com.web.bean.SignUpBean;

public class SignUpDao {

	public static int signUp(SignUpBean bean) {
		try {
			Connection conn = ConnectionDB.getConnection();
			String insertQuery = "INSERT INTO `usermaster`(`user_address`, `user_contact`, `user_dob`, `user_email`, `user_fname`, `user_gender`, `user_lname`, `user_password`, user_type_id) VALUES "
					+ "(?,?,?,?,?,?,?,?,?)";
			System.out.println(insertQuery);
			PreparedStatement ps = conn.prepareStatement(insertQuery);
			ps.setString(1, bean.getUseraddress());
			ps.setString(2, bean.getUsercontact());
			ps.setString(3, bean.getUserdob());
			ps.setString(4, bean.getUseremail());
			ps.setString(5, bean.getUserfname());
			ps.setString(6, bean.getUsergender());
			ps.setString(7, bean.getUserlname());
			ps.setString(8, bean.getUserpassword());
			ps.setInt(9, 3);
		//	ps.setString(6, bean.getUser_type_id());

			int i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public static int submitContactUs(String uname, String uemail, String usubject, String umessage ) {
		try {
			Connection conn = ConnectionDB.getConnection();
			String insertQuery = "INSERT INTO `feedback`(`feedbackmsg`, `feedbacksubject`, `feedbackname`, `feedbackemail`) VALUES (?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(insertQuery);
			ps.setString(1, umessage);
			ps.setString(2, usubject);
			ps.setString(3, uname);
			ps.setString(4, uemail);
			int i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public static LoggerInfo loginCheck(String userName, String userPassword){
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
			//	info.setFullname(rs.getString("user_fname") + " " +rs.getString("user_c1lname"));
				info.setFullname(rs.getString("user_fname") + " " +rs.getString("user_fname"));
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
}
