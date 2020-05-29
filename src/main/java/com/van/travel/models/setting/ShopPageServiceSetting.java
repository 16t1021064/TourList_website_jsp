package com.van.travel.models.setting;

import org.json.JSONObject;

public class ShopPageServiceSetting extends AbstractSetting {
	
	public JSONObject forItem;

	public ShopPageServiceSetting() {
		super("shop_page_service");
		this.forItem = (JSONObject) this.data.get("foritem");
	}
	
	
	@Override
	public void wrireData() {
		this.data.put("foritem", this.forItem);
		super.wrireData();
	}

}
