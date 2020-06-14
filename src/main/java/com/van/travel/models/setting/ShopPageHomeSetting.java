package com.van.travel.models.setting;

import org.json.JSONArray;
import org.json.JSONObject;

public class ShopPageHomeSetting extends AbstractSetting {
	public JSONArray services;
	public JSONObject tour;
	public JSONObject destination;
	public JSONObject activity;
	public JSONObject subcribe;
	public JSONObject sale;
	public JSONObject blog;
	public JSONObject benefit;

	public ShopPageHomeSetting() {
		super("shop_page_home");
		this.services = this.data.getJSONArray("services");
		this.tour = this.data.getJSONObject("tour");
		this.destination = this.data.getJSONObject("destination");
		this.activity = this.data.getJSONObject("activity");
		this.subcribe = this.data.getJSONObject("subcribe");
		this.sale = this.data.getJSONObject("sale");
		this.blog = this.data.getJSONObject("blog");
		this.benefit = this.data.getJSONObject("benefit");
		
//		seed data
		if(!this.sale.has("bg")) {
			this.sale.put("bg", "");
		}
	}
	
	@Override
	public void writeData() {
		this.data.put("services", this.services);
		this.data.put("tour", this.tour);
		this.data.put("destination", this.destination);
		this.data.put("activity", this.activity);
		this.data.put("subcribe", this.subcribe);
		this.data.put("sale", this.sale);
		this.data.put("blog", this.blog);
		this.data.put("benefit", this.benefit);
		super.writeData();
	}
}
