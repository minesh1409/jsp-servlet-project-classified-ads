/**
 * Mar 21, 2017 5:43:59 PM
 */
package model;


import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.Dbcon;
import pojo.RegisterPojo;


public class RegisterModel 
{
	Dbcon dbcon;
	public RegisterModel()
	{	
	dbcon = Dbcon.getinstance(); 
//	dbcon.msg();
	}
	
	public void insert(RegisterPojo pojo) 
	{
		dbcon.openconnection();
//		System.out.println("Name:"+pojo.getFirstname()+pojo.getLastname()+"Cont:"+pojo.getContact()+"Add:"+pojo.getAddress()+"Email:"+pojo.getEmail()+"Pass:"+pojo.getPassword()+"loc:"+pojo.getLocation()+"Type:"+pojo.getUsertype());
		String sql="insert into user(firstName,lastName,contact,email,password,address,location_id,userType_id) values('"+pojo.getFirstname()+"',"
				+ "'"+pojo.getLastname()+"',"+pojo.getContact()+",'"+pojo.getEmail()+"','"+pojo.getPassword()+"','"+pojo.getAddress()+"',"+pojo.getLocation()+","+pojo.getUsertype()+")";
//		System.out.println(sql);
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
		
	}

	public RegisterPojo edit(int id) 
	{
		// TODO Auto-generated method stub
		RegisterPojo registerPojo=new RegisterPojo();
		 try {
			 dbcon.openconnection();
			 String sql="select * from user";
			 ResultSet resultSet=dbcon.executequery(sql);
			  while(resultSet.next())
	            {
				  registerPojo.setUsertype(resultSet.getInt(1));
				  registerPojo.setFirstname(resultSet.getString(2));
				  registerPojo.setLastname(resultSet.getString(3));
				  registerPojo.setContact(resultSet.getInt(4));
				  registerPojo.setAddress(resultSet.getString(5));
				  registerPojo.setLocation(resultSet.getInt(6));
				  registerPojo.setEmail(resultSet.getString(7));
				  registerPojo.setPassword(resultSet.getString(8));
	            }
			 dbcon.connectionclose();
		 }catch(SQLException ex)
		 {
			 System.out.println("Error!!!!");
		 }
		
		return registerPojo;
	}

	public int update(RegisterPojo registerPojo) 
	{
		// TODO Auto-generated method stub
		dbcon.openconnection();
		String sql="update user set firstName='"+registerPojo.getFirstname()+"',lastName='"+registerPojo.getLastname()+"',"
				+ "contact="+registerPojo.getContact()+",email='"+registerPojo.getEmail()+"',password='"+registerPojo.getPassword()+"',"
				+ "address='"+registerPojo.getAddress()+"',location_id="+registerPojo.getLocation()+",userType_id="+registerPojo.getUsertype()+")";
		int id=dbcon.getOperationWithOutGeneratorId(sql);
		dbcon.connectionclose();
        System.out.println(id);
        return id;
	}
	
	
	public void disapprove(int id) 
	{
		dbcon.openconnection();
		String sql="delete from user where id="+id;
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
	}

}
