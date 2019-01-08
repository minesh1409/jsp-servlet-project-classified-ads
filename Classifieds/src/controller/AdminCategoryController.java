package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AdminCategoryModel;
import pojo.AdminCategorypojo;

/**
 * Servlet implementation class AdminCategoryController
 */
@WebServlet("/AdminCategoryController")
public class AdminCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("actionButton");
		AdminCategoryModel adminCategoryModel =new AdminCategoryModel();
		if(action.equals("category"))
		{
			AdminCategorypojo pojo = new AdminCategorypojo();
			pojo.setCategory(request.getParameter("Category"));
			adminCategoryModel.insert(pojo);
			response.sendRedirect("Admin/Category.jsp");
		}
//		}else if(action.equals("subcategory"))
//		{
//			AdminCategorypojo pojo = new AdminCategorypojo();
//			pojo.setSubcategory(request.getParameter("Subcategory"));
//			model.insert(pojo);
//		} else if(action.equals("location"))
//		{
//			AdminCategorypojo pojo = new AdminCategorypojo();
//			pojo.setLocation(request.getParameter("Location"));
//			model.insert(pojo);
//		}
//	
	}

}
