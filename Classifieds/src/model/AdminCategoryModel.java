/**
 * Apr 12, 2017 1:48:06 AM
 */
package model;

import dbconnection.Dbcon;
import pojo.AdminCategorypojo;

public class AdminCategoryModel 
{
	Dbcon dbcon;
	public AdminCategoryModel(){ 
		dbcon = Dbcon.getinstance(); 
		}
	
	public void insert(AdminCategorypojo pojo) 
	{
		dbcon.openconnection();
		System.out.println("model pic"+pojo.getPicture()+"Icon"+pojo.getIcon());
		String sql="insert into category (name,image,icon) values('"+pojo.getCategory()+"','"+pojo.getPicture()+"','"+pojo.getIcon()+"')";
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
		
	}

}
