package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LocationModel;
import pojo.LocationPojo;


@WebServlet("/LocationController")
public class LocationController extends HttpServlet {
	private static final long serialVersionUD = 1L;
       
    public LocationController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
    	String action = request.getParameter("actionButton");
    	LocationModel locationModel = new LocationModel();
    	
    	 if(action.equals("location"))
    	 {
    		 LocationPojo pojo = new LocationPojo();
    		 pojo.setLocationname(request.getParameter("LocationName"));
    		 pojo.setZipcode(Integer.parseInt(request.getParameter("Zipcode")));
    		 locationModel.insert(pojo);
    		 response.sendRedirect("Admin/Category.jsp");
    	 }
    	 
    	 else if(action.equals("edit"))
         {
             locationModel=new LocationModel();
             String id=request.getParameter("id");
//             System.out.print("id::::::::::::::::::::"+id);
//             System.out.println("edit the data");
             LocationPojo locationPojo=locationModel.edit(Integer.parseInt(id));
           //  request.setAttribute("farmerObject", farmer);
             HttpSession httpSession=request.getSession();
             httpSession.setAttribute("locationObject", locationPojo);
             response.sendRedirect("Admin/Category.jsp");
        //     RequestDispatcher requestDispatcher=request.getRequestDispatcher("Admin/FarmerRegister.jsp");
        //     requestDispatcher.forward(request, response);
             
         }
    	 
    	 else if(action.equals("update"))
    	 {
            locationModel=new LocationModel();
            LocationPojo locationPojo=new LocationPojo();
            locationPojo.setLocationname(request.getParameter("LocationName"));
            locationPojo.setZipcode(Integer.parseInt(request.getParameter("Zipcode")));
            locationPojo.setId(Integer.parseInt(request.getParameter("id")));
            locationModel.update(locationPojo);
    	 }
    	
    }

}
