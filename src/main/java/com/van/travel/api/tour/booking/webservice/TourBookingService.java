package com.van.travel.api.tour.booking.webservice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.common.webservice.AbstractWebservice;
import com.van.travel.api.tour.booking.dto.TourBookingRequest;
import com.van.travel.api.tour.booking.process.TourBookingProcess;

@Path("/shop")
public class TourBookingService extends AbstractWebservice {
	
	@POST
	@Path("/tour/booking")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Response getAllEmployee(@Context HttpServletRequest req, TourBookingRequest request ) {
		HttpSession ses =req.getSession();
		return this.executeProcess(request, req);
	}

	@Override
	public AbstractProcess getProcess() {
		return (new TourBookingProcess());
	}

}
