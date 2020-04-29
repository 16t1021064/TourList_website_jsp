package com.van.travel.common;

import java.util.regex.Pattern;

/**
 * some common validate input request
 * @author pt_vien
 *
 */
public class InputValidate {
	
	/**
	 * Check string is empty or null
	 * @param string
	 * @return
	 */
	public boolean isEmptyString(String string) {
		
		if(string==null) {
			return true;
		}else {
			string = string.trim();
			if(string.equals("")) {
				return true;
			}else {
				return false;
			}
		}
		
	}
	
	/**
	 * Check email
	 * @param email
	 * @return
	 */
	public boolean isEmail(String email) {
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ 
                "[a-zA-Z0-9_+&*-]+)*@" + 
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" + 
                "A-Z]{2,7}$"; 
                  
				Pattern pat = Pattern.compile(emailRegex); 
				if (email == null) 
					return false; 
				return pat.matcher(email).matches();
	}
	
}
