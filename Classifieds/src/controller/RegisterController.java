package controller;

import java.io.IOException;
import java.io.PrintWriter;

//import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegisterModel;
import pojo.RegisterPojo;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       

    public RegisterController() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//doGet(request, response);
//		PrintWriter printWriter = response.getWriter();
		String action = request.getParameter("actionButton");
		RegisterModel registerModel= new RegisterModel();
		
		if(action.equals("Register"))
		{
			RegisterPojo pojo =  new RegisterPojo();
//			pojo.setId(Integer.parseInt(request.getParameter("id")));
			pojo.setUsertype(Integer.parseInt(request.getParameter("Usertype")));
			pojo.setFirstname(request.getParameter("FirstName"));
			pojo.setLastname(request.getParameter("LastName"));
			pojo.setContact(Long.parseLong(request.getParameter("Contact")));
			pojo.setAddress(request.getParameter("Address"));
//			System.out.println(pojo.getLocation());
			pojo.setLocation(Integer.parseInt(request.getParameter("Location").trim()));
			pojo.setEmail(request.getParameter("Email"));
			pojo.setPassword(request.getParameter("Password"));
			registerModel.insert(pojo);
//			printWriter.println("<html><body onload=\"alert('Successs')\"></body></html>");
			response.sendRedirect("Login.jsp");
//			printWriter.println("<html><body onload=\"alert('Successs')\"></body></html>");
		}
		 else if(action.equals("Edit"))
         {
//             RegisterModel registerModel=new RegisterModel();
             String id=request.getParameter("id");
             System.out.print("id::::::::::::::::::::"+id);
             System.out.println("edit the data");
             RegisterPojo registerPojo=registerModel.edit(Integer.parseInt(id));
           //  request.setAttribute("farmerObject", farmer);
             HttpSession httpSession=request.getSession();
             httpSession.setAttribute("registerObject", registerPojo);
             response.sendRedirect("Signup.jsp");
        //     RequestDispatcher requestDispatcher=request.getRequestDispatcher("Admin/FarmerRegister.jsp");
        //     requestDispatcher.forward(request, response);
             
         }
		 else if(action.equals("Update"))
		 {
			 RegisterPojo registerPojo = new RegisterPojo();
			 registerPojo.setUsertype(Integer.parseInt(request.getParameter("Usertype")));
			 registerPojo.setFirstname(request.getParameter("FirstName"));
			 registerPojo.setLastname(request.getParameter("LastName"));
			 registerPojo.setContact(Long.parseLong(request.getParameter("Contact")));
			 registerPojo.setAddress(request.getParameter("Address"));
			 registerPojo.setLocation(Integer.parseInt(request.getParameter("Location").trim()));
			 registerPojo.setEmail(request.getParameter("Email"));
			 registerPojo.setPassword(request.getParameter("Password"));
			 registerPojo.setId(Integer.parseInt(request.getParameter("id")));
			 registerModel.update(registerPojo);
			 
			 response.sendRedirect("User/Category.jsp");
		 }
	}

}
