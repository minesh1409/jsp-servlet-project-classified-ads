/**
 * Apr 15, 2017 11:33:42 AM
 */
package model;

import dbconnection.Dbcon;
import pojo.AdminCategorypojo;

public class AddcategoryModel 
{
	Dbcon dbcon;
	public AddcategoryModel(){ 
		dbcon = Dbcon.getinstance(); 
		}
	
	public void insert(AdminCategorypojo pojo) 
	{
		dbcon.openconnection();
		String sql="insert into category (name,image,icon) values('"+pojo.getCategory()+"','"+pojo.getPicture()+"','"+pojo.getIcon()+"')";
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
		
	}

}
