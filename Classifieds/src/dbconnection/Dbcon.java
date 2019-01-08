/**
 * Mar 21, 2017 5:39:43 PM
 */
package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbcon {
	private Dbcon() {

	}

	static Dbcon dbcon = null;

	public static Dbcon getinstance() {
		if (dbcon == null) {
			dbcon = new Dbcon();
		}
		return dbcon;
	}

	public void msg() {
		System.out.println("Hello");
	}
	
	Connection connection;
	Statement statement;
	public void openconnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/classifiedads", "root", "root");
//			System.out.println("Connection open");
			statement = connection.createStatement();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public void connectionclose()
	{
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public int executeupdate(String sql) //change from alter to statementexecuteupdate
	{
		
		int a=0;
		try {
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return a;
	}
	
	public ResultSet executequery(String list) //change from show to statementexecutequery
	{
		ResultSet resultSet=null;
		try {
			resultSet=statement.executeQuery(list);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return resultSet;
	}
	
	//By jay-sag project 
	public int getOperation(String query)
    {
        int auto_id=0;
        try 
        {
            int a=statement.executeUpdate(query,statement.RETURN_GENERATED_KEYS );
            if(a>0) 
            {
                ResultSet rs = statement.getGeneratedKeys();
                rs.next();
                auto_id = rs.getInt(1);
            }
        } catch (SQLException e) {
			
			e.printStackTrace();
		}
        return auto_id;
    }
    
    public int getOperationWithOutGeneratorId(String query)
    {
        int id=0;
        try 
        {
            id=statement.executeUpdate(query,statement.RETURN_GENERATED_KEYS );
            
        }catch (SQLException e) {
			
			e.printStackTrace();
		}
        return id;
    }

}
