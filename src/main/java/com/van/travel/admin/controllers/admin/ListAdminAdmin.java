package com.van.travel.admin.controllers.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Admin;
import com.van.travel.models.ContactMessage;

/**
 * Servlet implementation class ListAdminAdmin
 */
@WebServlet("/admin/admin")
public class ListAdminAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAdminAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		
		Admin admin = (Admin) request.getSession().getAttribute("admin");
		if(admin != null) {
			whereConditions.add(new Object[] {"id", "!=", admin.getId(), "STRING"});
		}
		ArrayList<Object[]> orderBys = new ArrayList<Object[]>();
		orderBys.add(new Object[] {"is_superadmin", "desc"});
		orderBys.add(new Object[] {"email", "asc"});
		ArrayList<Admin> list = (new Admin()).all(whereConditions, orderBys);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/Admin/admin-list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
