package com.van.travel.api.shop.contact.message.process;

import java.util.Date;

import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.CommonResponse;
import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.shop.contact.message.dto.ContactMessageRequest;
import com.van.travel.api.shop.contact.message.dto.ContactMessageResponse;
import com.van.travel.models.ContactMessage;

public class ContactMessageProcess extends AbstractProcess {

	@Override
	public CommonResponse process(AbstractRequestData abstractRequestData) {
		
		ContactMessageRequest req = (ContactMessageRequest) abstractRequestData;
		ContactMessageResponse res = new ContactMessageResponse();
		
		boolean active = true;
		String name = req.name;
		String email = req.email;
		String message = req.message;
		System.out.println(message);
		Date submitTime = new Date();
		ContactMessage contactMessage = (new ContactMessage()).create(active, name, email, message, submitTime);
		
		res.id_message = contactMessage.getId();
		return new CommonResponse(200, "success", new String[] {}, res);
		
	}
	
}
