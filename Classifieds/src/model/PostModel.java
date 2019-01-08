/**
q * Mar 28, 2017 1:00:00 PM
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;


import dbconnection.Dbcon;
import pojo.PostPojo;
//import pojo.RegisterPojo;
import pojo.SubCategoryPojo;


public class PostModel {
	
	Dbcon dbcon;
	public PostModel()
	{	
	dbcon = Dbcon.getinstance(); 
//	dbcon.msg();
	}
	
	public void insert(PostPojo pojo) 
	{
		dbcon.openconnection();
		System.out.println(""+pojo.getNegosiable());
//		System.out.println("Name:"+pojo.getFirstname()+pojo.getLastname()+"Cont:"+pojo.getContact()+"Add:"+pojo.getAddress()+"Email:"+pojo.getEmail()+"Pass:"+pojo.getPassword()+"loc:"+pojo.getLocation()+"Type:"+pojo.getUsertype());
		
		System.out.println();
		String sql="insert into user_product(description,price,isNegotiable,image1,image2,image3,ownerType,isAvailable,isApprove,subCategory_id,user_id) values"
				+ "('"+pojo.getDescribead()+"',"+pojo.getPrice()+","+pojo.getNegosiable()+",'"+pojo.getPicture1()+"','"+pojo.getPicture2()+"',"
				+ "'"+pojo.getPicture3()+"','"+pojo.getOwnertype()+"',"+pojo.isIsavaliable()+","+pojo.isIsapprove()+","+pojo.getSubCategoryId()+","
						+ ""+pojo.getUserId()+")";//user id insert kryu 5 15 2017;
		System.out.println(sql);
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
		
	}
	
	public ResultSet getSubCategory(SubCategoryPojo subCategoryPojo) 
	{
		dbcon.openconnection();
		String sql="select * from subcategory where category_id="+subCategoryPojo.getCatgeoryId();
		System.out.println(sql);
		ResultSet resultSet= dbcon.executequery(sql);
		return resultSet;
	}

	public PostPojo getAdsDetail(int id)
	{
		PostPojo pojo = new PostPojo();
		dbcon.openconnection();
		String sql = "select up.*,c.name,sc.name,l.name,u.firstName,u.lastName,c.id from user_product up,category c,subcategory sc,location l,user u where up.user_id = u.id and up.subcategory_id = sc.id and sc.category_id  = c.id and u.location_id = l.id and up.id ="+id;
		ResultSet resultSet = dbcon.executequery(sql);
		try {
			while(resultSet.next())
			{
				pojo.setId(resultSet.getInt(1));
				pojo.setDescribead(resultSet.getString(2));
				pojo.setPrice(resultSet.getDouble(3));
				pojo.setNegosiable(resultSet.getBoolean(4));
				pojo.setPicture1(resultSet.getString(5));
				pojo.setPicture2(resultSet.getString(6));
				pojo.setPicture3(resultSet.getString(7));
				pojo.setOwnertype(resultSet.getString(8));
				pojo.setIsavaliable(resultSet.getBoolean(9));
				//date
				pojo.setIsapprove(resultSet.getBoolean(11));
				pojo.setUserId(resultSet.getInt(12));
				pojo.setSubCategoryId(resultSet.getInt(13));
				pojo.setCategory(resultSet.getString(14));
				pojo.setSubCategoryName(resultSet.getString(15));
				pojo.setLocation(resultSet.getString(16));
				pojo.setFirstName(resultSet.getString(17));
				pojo.setLastName(resultSet.getString(18));
				pojo.setCategoryId(resultSet.getInt(19));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dbcon.connectionclose();
		return pojo;
	}
	
	public void approve(int id) 
	{
		dbcon.openconnection();
		String sql="update user_product set isapprove=1 where id="+id;
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
		
	}
	
	public void disapprove(int id) 
	{
		dbcon.openconnection();
		String sql="update user_product set isapprove=0 where id="+id;
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
	}
	
	public int update(PostPojo postPojo) 
	{
		// TODO Auto-generated method stub
		dbcon.openconnection();
		String sql="update user_product set description='"+postPojo.getDescribead()+"', price ="+postPojo.getPrice()+", isNegotiable="+postPojo.getNegosiable()+", image1='"+postPojo.getPicture1()+"', image2='"+postPojo.getPicture2()+"', image3='"+postPojo.getPicture1()+"', ownerType='"+postPojo.getOwnertype()+"', isAvailable="+postPojo.isIsavaliable()+", isApprove="+postPojo.isIsapprove()+", subCategory_id="+postPojo.getSubCategoryId()+" where id="+postPojo.getId()+";";
		System.out.println(sql);
		int id=dbcon.getOperationWithOutGeneratorId(sql);
		dbcon.connectionclose();
        System.out.println(id);
        return id;
	}
}