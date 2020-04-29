package com.van.travel.api.common.process;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.ws.rs.core.Response;

import com.van.travel.api.common.auth.AuthDbAccess;
import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.CommonResponse;
import com.van.travel.api.common.token.TokenDbAccess;
import com.van.travel.common.FileConstant;

/**
 * Abstract process
 * This abstract class required token and user
 * @author pt_vien
 *
 */
public abstract class AbstractProcess {
	
	/**
	 * main process method
	 * @param abstractRequestData
	 * @return
	 */
	public Response execute(AbstractRequestData abstractRequestData) {
		
		boolean isCommonProcess = this.isCommonProcess();
		
		if(!isCommonProcess) {
		
	//		check token ----------------------------->
			CommonResponse checkTokenResponse = this.checkToken(abstractRequestData);
			
			if(checkTokenResponse != null) { // return request if check token fail
				return this.buildResponse(checkTokenResponse);
			}
			
	//		<-----------------------------------------
			
	//		check auth ------------------------------>
			try {
				
				CommonResponse checkAuthResponse = this.checkAuth(abstractRequestData);
				
				if(checkAuthResponse != null) {
					return this.buildResponse(checkAuthResponse);
				}
				
			} catch (ClassNotFoundException | SQLException | IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	//		<----------------------------------------
		
		}
		
//		submain process
		CommonResponse commonResponse =  this.process(abstractRequestData);
		
		
		if(!isCommonProcess) {
		
			try {
				
	//			extend auth time for token
				this.extendToken(abstractRequestData);
				
			} catch (ClassNotFoundException | IOException | SQLException e) {
				e.printStackTrace();
			}
		
		}
		
//		return normal response
		return this.buildResponse(commonResponse);
	}
	
//	render Response
	private Response buildResponse(CommonResponse commonResponse) {
		return (new CommonResponseFactory(commonResponse)).renderResponse();
	}
	
	/**
	 * Check token
	 * If check token fail, it return a CommonResponse object
	 * If check token success, it return a null value
	 * @param abstractRequestData
	 * @return
	 */
	private CommonResponse checkToken(AbstractRequestData abstractRequestData) {
		
//		check if exist data for token requirement -->
		if(
			abstractRequestData.api_token == null || 
			abstractRequestData.api_token.equals("") || 
			abstractRequestData.api_username == null || 
			abstractRequestData.api_username.equals("") 
		) {
			return (new CommonResponse(401, "Unauthorized", new String[] {}, false));
		}
//		<--
		
//		check token from database -->
		TokenDbAccess tokenDbAccess = new TokenDbAccess();
		
		try {
			Object[] rsChecking = tokenDbAccess.checkValidToken(abstractRequestData.api_username, abstractRequestData.api_token);
			
			boolean isValid = (boolean) rsChecking[0];
			
			if(isValid == true) {
				return null;
			}else {
				String errorMessage = (String) rsChecking[1];
				return new CommonResponse(401, errorMessage, new String[] {}, null);
			}
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return new CommonResponse(500, "Internal Server Error", new String[] {}, null);
		}
//		<--
		
		
	}
	
	/**
	 * Process extend token mode
	 * @param abstractRequestData
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	private void extendToken(AbstractRequestData abstractRequestData) throws FileNotFoundException, IOException, ClassNotFoundException, SQLException {
		
//		init token config -->
		Properties tokenProperties =  new Properties();
		tokenProperties.load((new FileConstant()).getToken());
//		<--
		
//		If Refresh mode is set then refresh and  -->
		String textValue = tokenProperties.getProperty("is_refresh_token");
		boolean isRefresh = Boolean.parseBoolean(textValue);
		
		if(isRefresh) {
			
			String textValue2 = tokenProperties.getProperty("refresh_period_min");
			int refreshPeriodMin = Integer.parseInt(textValue2);
			
			(new TokenDbAccess()).updateToken(abstractRequestData.api_username, abstractRequestData.api_token, refreshPeriodMin);
			
		}
		
	}
	
	private CommonResponse checkAuth(AbstractRequestData abstractRequestData) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		String processName = this.getClass().getSimpleName();
		
		String username = abstractRequestData.api_username;
		
		String screenId = abstractRequestData.auth_screen_id;
		
		AuthDbAccess authDbAccess = new AuthDbAccess();
		
		int n = authDbAccess.countAuth(username, processName, screenId);
		
		if(n > 0) {
			return null;
		}else{
			return new CommonResponse(403, "Forbidden", new String[] {}, null);
		}
		
	}
	
	private boolean isCommonProcess() {
		String processName = this.getClass().getSimpleName();
		
		String[] arrCommonProcessNames = new String[] {
			"LoginProcess",
			"RegisterProcess",
			"GetDataLangProcess",
			"SidebarGetDataProcess"
		};
		
		for (String commonName : arrCommonProcessNames) {
			if(commonName.equals(processName)) {
				return true;
			}
		}
		
		return false;
	}
	
	/**
	 * main subprocess
	 * @param abstractRequestData
	 * @return
	 */
	public abstract CommonResponse process(AbstractRequestData abstractRequestData);
	
	
	
}
