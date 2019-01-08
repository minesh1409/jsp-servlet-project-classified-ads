package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import model.AddcategoryModel;
import model.AdminCategoryModel;
import pojo.AdminCategorypojo;

@WebServlet("/AddcategoryController")
@MultipartConfig
public class AddcategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddcategoryController() {
		super();
	}

	private File file;
	private String filePath;
	Date date = new Date();
	long time;

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.GenericServlet#init()
	 */
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		filePath = getServletContext().getInitParameter("Image");
		time = date.getTime();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("actionButton");
//		AdminCategoryModel adminCategoryModel = new AdminCategoryModel();
		AddcategoryModel addcategoryModel = new AddcategoryModel();

		
		
		String name = request.getParameter("CategoryName");
		
		// image uploading code end

		 if(action.equals("category"))
		 {
		 	Part filePart = request.getPart("CategoryImage");
			String categoryImage = getFileName(filePart);
			fileWrite(categoryImage, filePart);
			
			filePart = request.getPart("CategoryIcon");
			String categoryIcon = getFileName(filePart);
			fileWrite(categoryIcon, filePart);
		 
			AdminCategorypojo pojo = new AdminCategorypojo();
			 
			 
			pojo.setCategory(request.getParameter("CategoryName"));
			pojo.setPicture(categoryImage);
			pojo.setIcon(categoryIcon);
//			adminCategoryModel.insert(pojo);
			addcategoryModel.insert(pojo);
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
