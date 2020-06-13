package com.van.travel.api.shop.contact.message.webservice;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.common.webservice.AbstractWebservice;
import com.van.travel.api.shop.contact.message.dto.ContactMessageRequest;
import com.van.travel.api.shop.contact.message.process.ContactMessageProcess;
import com.van.travel.api.shop.tour.booking.dto.TourBookingRequest;

@Path("/shop")
public class ContactMessageWebService extends AbstractWebservice {
	
	@POST
	@Path("/contact/message")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Response search(@Context HttpServletRequest req, ContactMessageRequest request ) {
		return this.executeProcess(request, req);
	}

	@Override
	public AbstractProcess getProcess() {
		// TODO Auto-generated method stub
		return new ContactMessageProcess();
	}
	
}
