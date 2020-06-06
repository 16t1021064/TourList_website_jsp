package com.van.travel.models.setting;

import org.json.JSONArray;
import org.json.JSONObject;

public class ShopPageContactSetting extends AbstractSetting {
	
	public JSONObject forItem;
	
	public JSONArray sectionA;
	
	public JSONObject map;
	
	public ShopPageContactSetting() {
		super("shop_page_contact");
		this.forItem = (JSONObject) this.data.get("foritem");
		this.sectionA = this.data.getJSONArray("section_a");
		this.map = this.data.getJSONObject("map");
	}
	
	@Override
	public void writeData() {
		this.data.put("foritem", this.forItem);
		this.data.put("section_a", this.sectionA);
		this.data.put("map", this.map);
		super.writeData();
	}
	
}
