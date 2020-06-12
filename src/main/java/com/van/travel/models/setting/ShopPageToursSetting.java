package com.van.travel.models.setting;

import org.json.JSONObject;

public class ShopPageToursSetting extends AbstractSetting {
	public JSONObject forItem;
	
	public ShopPageToursSetting() {
		super("shop_page_tours");
		this.forItem = (JSONObject) this.data.get("foritem");
	}
	
	@Override
	public void writeData() {
		this.data.put("foritem", this.forItem);
		super.writeData();
	}
}
