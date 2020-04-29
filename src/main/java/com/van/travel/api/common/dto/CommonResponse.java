package com.van.travel.api.common.dto;

/**
 * A common response
 * Processors (classes in process package) will return this class
 * @author pt_vien
 *
 */
public class CommonResponse {
	
	public int statusCode = 200;
	
	public String message = ""; // general message
	public String[] messageList = new String[] {}; // messages detail (optional) 
	public Object data = null; // data to response
	
	public CommonResponse(int statusCode, String message, String[] messageList, Object data) {
		super();
		this.statusCode = statusCode;
		this.message = message;
		this.messageList = messageList;
		this.data = data;
	}
	
	/**
	 * check if this response is a success response
	 * @return
	 */
	public boolean isSuccess() {
		if(this.statusCode >= 200 && this.statusCode <= 299) {
			return true;
		}else {
			return false;
		}
	}
}
