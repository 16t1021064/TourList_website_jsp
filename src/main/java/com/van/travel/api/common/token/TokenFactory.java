package com.van.travel.api.common.token;

import java.util.UUID;


/**
 * token factory
 * @author pt_vien
 *
 */
public class TokenFactory {
	
	/**
	 * generate a unique token
	 * @return
	 */
	public String generateToken() {
		return UUID.randomUUID().toString();
	}
	
}
