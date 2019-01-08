package controller;

import java.awt.SecondaryLoop;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import model.PostModel;
import pojo.PostPojo;
import pojo.SubCategoryPojo;


@WebServlet("/PostController")
@MultipartConfig
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private File file;
	private String filePath;
	Date date = new Date();
	long time;

   
    public PostController() {
        super();
     
    }

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		filePath = getServletContext().getInitParameter("Image");
		time = date.getTime();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("actionButton");
		PostModel model= new PostModel();
		PrintWriter printWriter = response.getWriter();
		
		if(action.equals("Submit"))
		{
		 	Part filePart = request.getPart("Image1");
			String Image1 = getFileName(filePart);
			fileWrite(Image1, filePart);
			
			filePart = request.getPart("Image2");
			String Image2 = getFileName(filePart);
			fileWrite(Image2, filePart);

			filePart = request.getPart("Image3");
			String Image3 = getFileName(filePart);
			fileWrite(Image3, filePart);
			
			PostPojo pojo =  new PostPojo();
			String userid = request.getParameter("userid");
			System.out.println(userid);
			pojo.setPicture1(Image1);
			pojo.setPicture2(Image2);
			pojo.setPicture3(Image3);
			pojo.setCategory(request.getParameter("Category"));
			pojo.setDescribead(request.getParameter("Describe"));
			pojo.setPrice(Integer.parseInt(request.getParameter("Price")));
			pojo.setNegosiable(Boolean.parseBoolean(request.getParameter("Negotiable")));
			pojo.setSubCategoryId(Integer.parseInt(request.getParameter("subCategoryId")));
			
			pojo.setUserId(Integer.parseInt(userid)); //edit 15 5 2017
			
			pojo.setOwnertype(request.getParameter("Ownertype"));
			pojo.setIsavaliable(true);
			pojo.setIsapprove(false);
			model.insert(pojo);
			response.sendRedirect("User/Myads.jsp");
		}
		else if(action.equals("subCatgeory"))
		{
			String categoryId = request.getParameter("id");
			SubCategoryPojo subCategoryPojo = new SubCategoryPojo();
			subCategoryPojo.setCatgeoryId(Integer.parseInt(categoryId));
			ResultSet resultSet = model.getSubCategory(subCategoryPojo);
			printWriter.println("  <select name=\"subCategoryId\" id=\"subcategory-group\" class=\"form-control\">");
			printWriter.println("<option value=\"0\" selected=\"selected\"> Select a subcategory...</option> ");
			try 
			{
				while(resultSet.next())
				{
					printWriter.println("<option value="+resultSet.getInt(1)+">"+resultSet.getString(2)+"</option>");
				}
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals("adsDetail"))
		{
			String id = request.getParameter("id");
			PostPojo postPojo = new PostPojo();
			postPojo.setId(Integer.parseInt(id));
			PostModel postModel = new PostModel();
			postPojo= postModel.getAdsDetail(Integer.parseInt(id));
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("adsDetail", postPojo);
			
			response.sendRedirect("User/Adsdetails.jsp");
		}
		
		else if(action.equals("approve"))
		{
			String id = request.getParameter("id");
			PostPojo postPojo = new PostPojo();
			postPojo.setId(Integer.parseInt(id));
			PostModel postModel = new PostModel();
			postModel.approve(Integer.parseInt(id));
			response.sendRedirect("Admin/ManageAds.jsp");
		}
		
		else if(action.equals("disapprove"))
		{
			String id = request.getParameter("id");
			PostPojo postPojo = new PostPojo();
			postPojo.setId(Integer.parseInt(id));
			PostModel postModel = new PostModel();
			postModel.disapprove(Integer.parseInt(id));
			response.sendRedirect("Admin/ManageAds.jsp");
			
		}
		
		if(action.equals("edit"))
		{
			String id=request.getParameter("id");
			PostPojo postPojo= new PostPojo();
			PostModel postModel = new PostModel();
			postPojo= postModel.getAdsDetail(Integer.parseInt(id));
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("editDetail", postPojo);
			response.sendRedirect("User/Postads.jsp");
		}
		
		 else if(action.equals("Update"))
		 {
			 Part filePart;
			 String Image1;
			 String Image2;
			 String Image3;
			 if(request.getPart("Image1")!=null)
			 { 
			 	filePart = request.getPart("Image1");
				Image1 = getFileName(filePart);
				fileWrite(Image1, filePart);
			 }	
			 else
			 {
				 Image1 =request.getParameter("image1"); 
			 }
			 if(request.getPart("Image1")!=null)
			 {
				filePart = request.getPart("Image2");
				Image2 = getFileName(filePart);
				fileWrite(Image2, filePart);
			 }
			 else
			 {
				 Image2 =request.getParameter("image1"); 
			 }
			 if(request.getPart("Image1")!=null)
			 { 
				filePart = request.getPart("Image3");
				Image3 = getFileName(filePart);
				fileWrite(Image3, filePart);
			 }
			 else
			 {
				 Image3 =request.getParameter("image1"); 
			 }
				PostPojo pojo =  new PostPojo();
				
				pojo.setId(Integer.parseInt(request.getParameter("id"))); //edit 15 5 2017
				pojo.setPicture1(Image1);
				pojo.setPicture2(Image2);
				pojo.setPicture3(Image3);
				pojo.setCategory(request.getParameter("Category"));
				pojo.setDescribead(request.getParameter("Describe"));
				pojo.setPrice(Double.parseDouble(request.getParameter("Price")));
				pojo.setNegosiable(Boolean.parseBoolean(request.getParameter("Negotiable")));
				pojo.setSubCategoryId(Integer.parseInt(request.getParameter("subCategoryId")));
				pojo.setOwnertype(request.getParameter("Ownertype"));
				pojo.setIsavaliable(true);
				pojo.setIsapprove(false);
//				pojo.setId(Integer.parseInt(request.getParameter("id")));
				model.update(pojo);
				
				response.sendRedirect("User/Myads.jsp");
		 }
		 
		
	}

	private String getFileName(final Part part) {
		final String partHeader = part.getHeader("content-disposition");
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				String name = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
				return time+""+name;
			}
		}
		return null;
	}

	void fileWrite(String fileName, Part filePart) {
		OutputStream out = null;
		InputStream filecontent = null;
		// final PrintWriter writer = response.getWriter();

		try {
			out = new FileOutputStream(new File(filePath + File.separator + fileName));

			filecontent = filePart.getInputStream();

			int read = 0;
			final byte[] bytes = new byte[1024];

			while ((read = filecontent.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
