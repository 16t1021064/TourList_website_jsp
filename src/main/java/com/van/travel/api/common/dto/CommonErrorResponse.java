package com.van.travel.api.common.dto;

/**
 * Common data response when error occur
 * @author pt_vien
 *
 */
public class CommonErrorResponse {
	public String message;
	public String[] messages;
	public CommonErrorResponse(String message, String[] messages) {
		super();
		this.message = message;
		this.messages = messages;
	}
	
}
