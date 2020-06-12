package com.van.travel.models.setting;

import org.json.JSONObject;

public class ShopPanelsSetting extends AbstractSetting {
	
	public JSONObject searchTour;
	public JSONObject benefit;
	public JSONObject support;
	public JSONObject tour;
	
	public ShopPanelsSetting() {
		super("shop_panels");
		this.searchTour = this.data.getJSONObject("search_tour");
		this.benefit = this.data.getJSONObject("benefit");
		this.support = this.data.getJSONObject("support");
		this.tour = this.data.getJSONObject("tour");
	}
	
	@Override
	public void writeData() {
		this.data.put("search_tour", this.searchTour);
		this.data.put("benefit", this.benefit);
		this.data.put("support", this.support);
		this.data.put("tour", this.tour);
		super.writeData();
	}
}
