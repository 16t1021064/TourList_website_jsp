package com.van.travel.api.admin.blog.checkslug.webservice;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.van.travel.api.admin.blog.checkslug.dto.BlogCheckslugRequest;
import com.van.travel.api.admin.blog.checkslug.process.BlogCheckslugProcess;
import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.common.webservice.AbstractWebservice;

@Path("/admin")
public class BlogCheckslugWebService extends AbstractWebservice {
	
	@POST
	@Path("/blog/checkslug")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Response search(@Context HttpServletRequest req, BlogCheckslugRequest request ) {
		return this.executeProcess(request, req);
	}

	@Override
	public AbstractProcess getProcess() {
		return new BlogCheckslugProcess();
	}

}
