

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.Dbcon;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String action = request.getParameter("actionButton");
		String uname = request.getParameter("username");
        String password = request.getParameter("password");
        Dbcon dbcon = Dbcon.getinstance();
        dbcon.openconnection();
//        String sql = "select user.*,user_type.* from user,user_type where username ='"+uname+"' and password = '"+password+"' and user.user_type_id = user_type.id";
        String sql="select u.*,ut.* from user u,user_type ut where email ='"+uname+"' and password = '"+password+"' and u.userType_id = ut.id";
        ResultSet resultSet = dbcon.executequery(sql);
        String userType = null;
        int id =0;
        try {
			while(resultSet.next())
			{
			    userType = resultSet.getString(11);
			    id = resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        dbcon.connectionclose();
        HttpSession  httpSession = request.getSession();
        if(userType!=null)
        {
            
            httpSession.setAttribute("uname",uname);
            httpSession.setAttribute("uType", userType);
            httpSession.setAttribute("id",id );
        }

		if(userType.equals("Admin"))
		{
			response.sendRedirect("Admin/AdminHome.jsp");
		}
		else if(userType.equals("Individual") ||userType.equals("Professional") )
		{
			response.sendRedirect("User/Category.jsp");
		}
		
		
	}

}
