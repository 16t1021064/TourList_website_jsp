package com.van.travel.api.admin.blog.checkslug.process;

import com.van.travel.api.admin.blog.checkslug.dto.BlogCheckslugRequest;
import com.van.travel.api.admin.blog.checkslug.dto.BlogCheckslugResponse;
import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.CommonResponse;
import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.models.Blog;

public class BlogCheckslugProcess extends AbstractProcess {

	@Override
	public CommonResponse process(AbstractRequestData abstractRequestData) {
		BlogCheckslugRequest request = (BlogCheckslugRequest) abstractRequestData;
		BlogCheckslugResponse response = new BlogCheckslugResponse();
		
		Blog temp = new Blog();
		Blog blog = temp.findWithSlug(request.slug);
		
		if(blog == null) {
			response.status = false;
		}else {
			response.status = true;
		}
		
		return new CommonResponse(200, "success", new String[] {}, response);
	}

}
