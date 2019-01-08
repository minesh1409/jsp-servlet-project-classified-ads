/**
 * May 15, 2017 7:41:23 PM
 */
package model;

import dbconnection.Dbcon;

/**
 * @author ASUS
 *
 */
public class FavouriteModel {

	Dbcon dbcon;
	public FavouriteModel()
	{	
	dbcon = Dbcon.getinstance(); 
//	dbcon.msg();
	}
	
	public void insert(int id,int uid) 
	{
		dbcon.openconnection();
		String sql="insert into user_favourite (user_id,userProduct_id) values("+uid+","+id+");";
		System.out.println(sql);
		dbcon.executeupdate(sql);
		dbcon.connectionclose();	
	}

	
	public void delete(int id) 
	{
		// TODO Auto-generated method stub
		dbcon.openconnection();
		String sql="delete from user_favourite where id="+id;
		System.out.println(sql);
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
	}

}
