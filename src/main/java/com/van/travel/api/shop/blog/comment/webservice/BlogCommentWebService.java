package com.van.travel.api.shop.blog.comment.webservice;

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
import com.van.travel.api.shop.blog.comment.dto.BlogCommentRequest;
import com.van.travel.api.shop.blog.comment.process.BlogCommentProcess;

@Path("/shop")
public class BlogCommentWebService extends AbstractWebservice {
	@POST
	@Path("/blog/comment")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Response search(@Context HttpServletRequest req, BlogCommentRequest request ) {
		return this.executeProcess(request, req);
	}

	@Override
	public AbstractProcess getProcess() {
		return (new BlogCommentProcess());
	}

}
