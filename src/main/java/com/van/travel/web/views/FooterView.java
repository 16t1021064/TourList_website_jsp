package com.van.travel.web.views;

import java.util.ArrayList;

import com.van.travel.models.Destination;
import com.van.travel.models.setting.FooterSetting;
import com.van.travel.web.factories.DestinationFactory;

public class FooterView {
	public ArrayList<Destination> hotDestinations;
	
	public FooterSetting footerSetting = new FooterSetting();
	
	public FooterView() {
		DestinationFactory destinationFactory = new DestinationFactory();
		this.hotDestinations = destinationFactory.getHotDestinations(6);
	}
}
