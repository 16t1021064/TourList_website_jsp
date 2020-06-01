package com.van.travel.models.setting;

import org.json.JSONArray;
import org.json.JSONObject;

public class ShopPageAboutSetting extends AbstractSetting {
	public JSONObject forItem;
	
	public JSONArray sectionA;
	
	public JSONObject sectionB;
	
	public JSONObject sectionC;

	public ShopPageAboutSetting() {
		super("shop_page_about");
		this.forItem = (JSONObject) this.data.get("foritem");
		this.sectionA = this.data.getJSONArray("section_a");
		this.sectionB = this.data.getJSONObject("section_b");
		this.sectionC = this.data.getJSONObject("section_c");
	}
	
	@Override
	public void writeData() {
		this.data.put("foritem", this.forItem);
		this.data.put("section_a", this.sectionA);
		this.data.put("section_b", this.sectionB);
		this.data.put("section_c", this.sectionC);
		super.writeData();
	}
}