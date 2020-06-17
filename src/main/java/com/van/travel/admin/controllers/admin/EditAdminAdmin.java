package com.van.travel.admin.controllers.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Admin;

/**
 * Servlet implementation class EditAdminAdmin
 */
@WebServlet("/admin/admin/edit")
public class EditAdminAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditAdminAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		Admin admin2 = (new Admin()).find(id);
		
		request.setAttribute("admin2", admin2);
		
		request.getRequestDispatcher("/WEB-INF/Admin/admin-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		Admin admin2 = (new Admin()).find(id);
		
		String actionrequest = request.getParameter("action-request");
		
		if(actionrequest.equals("UPDATE-INFO")) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String is_superadmin_text = request.getParameter("is_superadmin");
			boolean isSuperadmin;
			if(is_superadmin_text.equals("1")) {
				isSuperadmin = true;
			}else {
				isSuperadmin = false;
			}
			
			admin2.update(name, email, admin2.getPassword(), isSuperadmin);
			request.getSession().setAttribute("noti_success", new String[] {"Update info success"});
			response.sendRedirect(request.getAttribute("sitePath")+"/admin/admin/edit?id="+admin2.getId());
		}
		
		if(actionrequest.equals("UPDATE-PASSWORD")) {
			String password = request.getParameter("password");
			String password2 = request.getParameter("password2");
			if(!password.equals(password2)) {
				request.getSession().setAttribute("noti_danger", new String[] {"The two password are not the same"});
				response.sendRedirect(request.getAttribute("sitePath")+"/admin/admin/edit?id="+admin2.getId());
			}else {
				Admin newAdmin = admin2.update(admin2.getName(), admin2.getEmail(), DigestUtils.md5Hex(password.trim()), admin2.isSuperadmin());
				request.getSession().setAttribute("noti_success", new String[] {"Update password success"});
				response.sendRedirect(request.getAttribute("sitePath")+"/admin/admin/edit?id="+newAdmin.getId());
			}
		}
		
		
	}

}
