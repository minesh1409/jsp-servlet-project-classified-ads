package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.SearchModel;
import pojo.PostPojo;

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public SearchController() {
        super();       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("actionButton");
		SearchModel model = new SearchModel();
		PrintWriter printWriter=response.getWriter();
		ArrayList<PostPojo> arrayList = new ArrayList<PostPojo>();
		
		if(action.equals("Find"))
		{  
			HttpSession httpSession = request.getSession();
			String searcbycity = request.getParameter("searchbycity");
			String searchproduct= request.getParameter("searchads");
			System.out.println("city/code:"+searcbycity+" product:"+searchproduct);
			arrayList =  model.view(searcbycity,searchproduct);
			
			//response.sendRedirect("User/Search.jsp");
			//printWriter.println("<html><body onload=\"alert('Successs')\"></body></html>");
			httpSession.setAttribute("postAdd", arrayList);
			response.sendRedirect("User/Search.jsp");
		}
	}

}
