package com.van.travel.api.tour.enquiry.webservice;

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
import com.van.travel.api.tour.enquiry.dto.TourEnquiryRequest;
import com.van.travel.api.tour.enquiry.process.TourEnquiryProcess;

@Path("/shop")
public class TourEnquiryWebService extends AbstractWebservice {
	
	@POST
	@Path("/tour/enquiry")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Response search(@Context HttpServletRequest req, TourEnquiryRequest request ) {
		return this.executeProcess(request, req);
	}

	@Override
	public AbstractProcess getProcess() {
		return new TourEnquiryProcess();
	}

}
