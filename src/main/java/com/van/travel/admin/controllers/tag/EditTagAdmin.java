package com.van.travel.admin.controllers.tag;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Destination;
import com.van.travel.models.Tag;

/**
 * Servlet implementation class EditTagAdmin
 */
@WebServlet("/admin/tag/edit")
public class EditTagAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTagAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Tag tag = (new Tag()).find(id);
		request.setAttribute("tag", tag);
		request.getRequestDispatcher("/WEB-INF/Admin/tag-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Tag tag = (new Tag()).find(id);
		
		String name = request.getParameter("name");
		int clicked = Integer.parseInt(request.getParameter("clicked").trim());
		
		tag = tag.update(name, clicked);
		
		response.sendRedirect("/travel/admin/tag/edit?id="+tag.getId());
	}

}
