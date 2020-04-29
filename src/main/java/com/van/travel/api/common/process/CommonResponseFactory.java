package com.van.travel.api.common.process;

import javax.ws.rs.core.Response;

import com.van.travel.api.common.dto.CommonErrorResponse;
import com.van.travel.api.common.dto.CommonResponse;

/**
 * Response Factory
 * This class contain a CommonResponse, and render Response object
 * @author pt_vien
 *
 */
public class CommonResponseFactory {
	
	private CommonResponse response;
	
	public CommonResponseFactory(CommonResponse commonResponse) {
		this.response = commonResponse;
	}
	
	/**
	 * render Response object
	 * @return
	 */
	public Response renderResponse() {
		return Response.status(this.response.statusCode).entity(this.getEntityResponse()).build();
	}
	
	/**
	 * Get data to response
	 * Return data of response if success reponse and message of response if error response
	 * @return
	 */
	private Object getEntityResponse() {
		if(this.response.isSuccess()) {
			return this.response.data;
		}else {
			return (new CommonErrorResponse(this.response.message, this.response.messageList));
		}
	}
	
}
