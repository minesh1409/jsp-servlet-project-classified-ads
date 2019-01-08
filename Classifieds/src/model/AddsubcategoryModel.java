/**
 * Apr 15, 2017 6:10:28 PM
 */
package model;

import dbconnection.Dbcon;
import pojo.AddSubCategorypojo;


public class AddsubcategoryModel 
{
	Dbcon dbcon;
	public AddsubcategoryModel(){ 
		dbcon = Dbcon.getinstance(); 
		}
	
	public void insert(AddSubCategorypojo pojo) 
	{
		dbcon.openconnection();
		String sql="insert into subcategory (name,image,icon,category_id) values('"+pojo.getSubcategory()+"','"+pojo.getPicture()+"','"+pojo.getIcon()+"','"+pojo.getCategory()+"')";
		System.out.println(pojo.getSubcategory()+ pojo.getPicture()+pojo.getIcon()+pojo.getCategory() );
		System.out.println(sql);
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
		
	}
}
