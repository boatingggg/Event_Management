package com.web.dao;

import org.json.JSONObject;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

public class OnlinePaymentId {

	public static String getOrderId(int amount) {
		String orderId = "";
		try {
			RazorpayClient client = new RazorpayClient(
					"rzp_test_rEARbPmOMhB9x5", "cPJW1HCxxTq6heigXFhKwvPh");
			JSONObject orderRequest = new JSONObject();
			orderRequest.put("amount", amount * 100000); // amount in the smallest
												// currency unit
			orderRequest.put("currency", "INR");
			orderRequest.put("receipt", "order_rcptid_course_payment");

			Order order = client.Orders.create(orderRequest);
			JSONObject orderJson = order.toJson();
			orderId = orderJson.getString("id");
			System.out.println("" + order);
			System.out.println("orderId . " + orderId);
		} catch (RazorpayException e) {
			// Handle Exception
			System.out.println(e.getMessage());
		}

		return orderId;
	}
}
