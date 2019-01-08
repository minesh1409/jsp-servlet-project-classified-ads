/**
 * Apr 8, 2017 12:26:11 PM
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dbconnection.Dbcon;
import pojo.PostPojo;

public class SearchModel {

	Dbcon dbcon;

	public void SearchrModel() {
		dbcon = Dbcon.getinstance();
		// dbcon.msg();
	}

	public ArrayList<PostPojo> view(String searcbycity, String searchproduct) {
		ArrayList<PostPojo> arrayList = new ArrayList<PostPojo>();
		String sql=null;
		Dbcon dbcon = Dbcon.getinstance();
		dbcon.openconnection();
		 System.out.println("model:"+searcbycity.equals(null)+"hi::"+searcbycity);
		 System.out.println("model"+searchproduct);
		if (searcbycity != null && !searcbycity.isEmpty() && (searchproduct==null || searchproduct.isEmpty())) 
		{
			// System.out.println("in if city not null"+searcbycity);
			sql = "select user_product.*,location.name,subcategory.name from user_product,user,location,subcategory where user.id=user_product.user_id and user.location_id=location.id and user_product.subcategory_id = subcategory.id and  (location.name='"
					+ searcbycity + "' or location.zipCode='" + searcbycity + "') and user_product.isAvailable=1 and user_product.isApprove=1";
			System.out.println(sql);
			ResultSet resultSet = dbcon.executequery(sql);
			try 
			{
				while (resultSet.next()) 
				{
					PostPojo pojo = new PostPojo();
					pojo.setPicture1(resultSet.getString(5));
					pojo.setSubCategoryName(resultSet.getString(15));
					pojo.setLocation(resultSet.getString(14));
					pojo.setPrice(resultSet.getDouble(3));
					pojo.setId(resultSet.getInt(1));
					arrayList.add(pojo);
				}
				System.out.println(arrayList.size());
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			dbcon.connectionclose();

		}
		else if (searchproduct != null && !searchproduct.isEmpty() && (searcbycity==null || searcbycity.isEmpty())) 
		{
			int categoryId= category(searchproduct);
			int subCategoryId =0;
			if(categoryId==0)
			{
				subCategoryId = subCategory(searchproduct);
			}
			if(categoryId>0)
				sql="select user_product.*,location.name,subcategory.name from user_product,location,subcategory,user,category where user_product.subCategory_id = subcategory.id and user.location_id = location.id and user_product.user_id = user.id and subcategory.category_id =category.id and user_product.isAvailable=1 and user_product.isApprove=1 and category.id ="+categoryId;
			else if(subCategoryId>0)
				sql ="select user_product.*,location.name,subcategory.name from user_product,location,subcategory,user where user_product.subCategory_id = subcategory.id and user.location_id = location.id and user_product.user_id = user.id and user_product.isAvailable=1 and user_product.isApprove=1 and subcategory.id ="+subCategoryId;
			System.out.println(sql);
			ResultSet resultSet = dbcon.executequery(sql);
			try {
				while (resultSet.next()) {
					PostPojo pojo = new PostPojo();
					pojo.setPicture1(resultSet.getString(5));
					pojo.setSubCategoryName(resultSet.getString(15));
					pojo.setLocation(resultSet.getString(14));
					pojo.setPrice(resultSet.getDouble(3));
					pojo.setId(resultSet.getInt(1));
					arrayList.add(pojo);

				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
			dbcon.connectionclose();
		}
		else if(searchproduct!=null && searcbycity!=null)
		{
			int categoryId= category(searchproduct);
			int subCategoryId =0;
			if(categoryId==0)
			{
				subCategoryId = subCategory(searchproduct);
			}
			if(categoryId>0)
				sql = "select user_product.*,location.name,subcategory.name from user_product,user,location,subcategory where user.id=user_product.user_id and user.location_id=location.id and user_product.subcategory_id = subcategory.id and user_product.isAvailable=1 and user_product.isApprove=1 and  (location.name='"+searcbycity+"' or location.zipCode='"+searcbycity+"') and subCategory_id in (select id from subcategory where category_id in (select id from category where id = "+categoryId+"))";
			if(subCategoryId>0)
				sql = "select user_product.*,location.name,subcategory.name from user_product,user,location,subcategory where user.id=user_product.user_id and user.location_id=location.id and user_product.subcategory_id = subcategory.id and user_product.isAvailable=1 and user_product.isApprove=1 and  (location.name='"+searcbycity+"' or location.zipCode='"+searcbycity+"') and subCategory_id in (select id from subcategory where id = "+subCategoryId+")";
			ResultSet resultSet = dbcon.executequery(sql);
			try {
				while (resultSet.next()) {
					PostPojo pojo = new PostPojo();
					pojo.setPicture1(resultSet.getString(5));
					pojo.setSubCategoryName(resultSet.getString(15));
					pojo.setLocation(resultSet.getString(14));
					pojo.setPrice(resultSet.getDouble(3));
					pojo.setId(resultSet.getInt(1));
					arrayList.add(pojo);

				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
			dbcon.connectionclose();
		}
		return arrayList;
	}
	
	public int category(String searchproduct)
	{
		Dbcon dbcon = Dbcon.getinstance();
		dbcon.openconnection();
		int categoryId=0;
		String sql = "select * from category where name ='" + searchproduct + "'";
		ResultSet resultSet = dbcon.executequery(sql);
		try 
		{
			while (resultSet.next()) 
			{
				categoryId= resultSet.getInt(1);
			}
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return categoryId;
	}
	
	public int subCategory(String searchproduct)
	{
		Dbcon dbcon = Dbcon.getinstance();
		dbcon.openconnection();
		int subCategoryId=0;
		String sql = "select * from subcategory where name = '" + searchproduct + "'";
		ResultSet resultSet = dbcon.executequery(sql);
		try 
		{
			while (resultSet.next()) 
			{
				subCategoryId= resultSet.getInt(1);
			}
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return subCategoryId;
	}
	
}