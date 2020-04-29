package com.van.travel.api.common.webservice;

import javax.ws.rs.core.Response;

import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.AbstractResponseData;
import com.van.travel.api.common.process.AbstractProcess;

public abstract class AbstractWebservice {
	
	
	public Response executeProcess(AbstractRequestData abstractRequestData) {
		
		AbstractProcess process = this.getProcess();
		
		return process.execute(abstractRequestData);
		
	}
	
	public abstract AbstractProcess getProcess();
	
}
