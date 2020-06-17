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
 * Servlet implementation class CreateAdminAdmin
 */
@WebServlet("/admin/admin/create")
public class CreateAdminAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateAdminAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/WEB-INF/Admin/admin-create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String is_superadmin_text = request.getParameter("is_superadmin");
		boolean isSuperadmin;
		if(is_superadmin_text.equals("1")) {
			isSuperadmin = true;
		}else {
			isSuperadmin = false;
		}
		
		if(!password.equals(password2)) {
			request.getSession().setAttribute("noti_danger", new String[] {"The two password are not the same"});
			response.sendRedirect(request.getAttribute("sitePath")+"/admin/admin/create");
		}else {
			Admin newAdmin = (new Admin()).create(name, email, DigestUtils.md5Hex(password.trim()), isSuperadmin);
			request.getSession().setAttribute("noti_success", new String[] {"Creadted successfully"});
			response.sendRedirect(request.getAttribute("sitePath")+"/admin/admin/edit?id="+newAdmin.getId());
		}
		
	}

}
