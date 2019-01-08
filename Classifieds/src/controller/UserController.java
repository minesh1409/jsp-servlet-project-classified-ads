package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegisterModel;
import pojo.RegisterPojo;



@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action = request.getParameter("actionButton");
		if(action.equals("disapprove"))
		{
			String id = request.getParameter("id");
			RegisterPojo registerPojo=new RegisterPojo();
			registerPojo.setId(Integer.parseInt(id));
			RegisterModel registerModel = new RegisterModel();
			 
			registerModel.disapprove(Integer.parseInt(id));
			response.sendRedirect("Admin/ManageUser.jsp");
		}
	}

}
