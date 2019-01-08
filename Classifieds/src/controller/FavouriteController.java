package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FavouriteModel;
import pojo.FavourtePojo;

@WebServlet("/FavouriteController")
public class FavouriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FavouriteController() {
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
		if(action.equals("favourite"))
		{
			String id = request.getParameter("id");
			String userid = request.getParameter("userid");
//			FavourtePojo favourtePojo=new FavourtePojo();
//			favourtePojo.setId(Integer.parseInt(id));
//			favourtePojo.setUserid();
			FavouriteModel favouriteModel=new FavouriteModel();
			favouriteModel.insert(Integer.parseInt(id),Integer.parseInt(userid));
			response.sendRedirect("User/Favourite.jsp");
		}
		
		if(action.equals("delete"))
		{
			String id = request.getParameter("id");
			FavouriteModel favouriteModel=new FavouriteModel();
			favouriteModel.delete(Integer.parseInt(id));
			response.sendRedirect("User/Favourite.jsp");
		}
	}

}
