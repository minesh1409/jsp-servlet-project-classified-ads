package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.AddsubcategoryModel;
import pojo.AddSubCategorypojo;



/**
 * Servlet implementation class Addsubcategory
 */
@WebServlet("/AddsubcategoryController")
@MultipartConfig
public class AddsubcategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddsubcategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

    private File file;
   	private String filePath;
   	Date date = new Date();
   	long time;
   	
   	public void init() throws ServletException {
		// TODO Auto-generated method stub
		filePath = getServletContext().getInitParameter("Image");
		time = date.getTime();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String action = request.getParameter("actionButton");
//		AdminCategoryModel adminCategoryModel = new AdminCategoryModel();
		AddsubcategoryModel addsubcategoryModel = new AddsubcategoryModel();

		
		
		String name = request.getParameter("SubCategoryName");
		
		// image uploading code end

		 if(action.equals("subcategory"))
		 {
		 	Part filePart = request.getPart("SubCategoryImage");
			String subcategoryImage = getFileName(filePart);
			fileWrite(subcategoryImage, filePart);
			
			filePart = request.getPart("SubCategoryIcon");
			String subcategoryIcon = getFileName(filePart);
			fileWrite(subcategoryIcon, filePart);
		 
			AddSubCategorypojo pojo = new AddSubCategorypojo();
			 
			pojo.setCategory(request.getParameter("Category"));
			pojo.setSubcategory(request.getParameter("SubCategoryName"));
			pojo.setPicture(subcategoryImage);
			pojo.setIcon(subcategoryIcon);
//			adminCategoryModel.insert(pojo);
			addsubcategoryModel.insert(pojo);
			response.sendRedirect("Admin/Category.jsp");
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
