/**
 * May 11, 2017 12:02:23 PM
 */
package model;


import java.sql.ResultSet;

import dbconnection.Dbcon;
import pojo.LocationPojo;

public class LocationModel 
{
	Dbcon dbcon;
	public LocationModel()
	{ 
		dbcon = Dbcon.getinstance(); 
	}
	
	public void insert(LocationPojo pojo) 
	{
		dbcon.openconnection();
		String sql="insert into location (name,zipCode) values('"+pojo.getLocationname()+"',"+pojo.getZipcode()+")";
//		System.out.println(sql);
		dbcon.executeupdate(sql);
		dbcon.connectionclose();
		
	}
	
	public LocationPojo edit(int id)
    {
        LocationPojo locationPojo=new LocationPojo();
        try {
        	dbcon.openconnection();
    		String sql="select * from location";
    		ResultSet resultSet=dbcon.executequery(sql);
    		 while(resultSet.next())
             {
                 locationPojo.setId(resultSet.getInt(1));
                 locationPojo.setLocationname(resultSet.getString(2));
                 locationPojo.setZipcode(resultSet.getInt(3));
             }
    		dbcon.connectionclose();
			
		} catch (Exception e) {
			
		}
        return locationPojo;
    }

	/**
	 * @param locationPojo
	 */
	public int update(LocationPojo locationPojo) 
	{
		dbcon.openconnection();
		String sql="update farmer set name = '"+locationPojo.getLocationname()+"',zipCode="+locationPojo.getZipcode()+"";
		int id=dbcon.getOperationWithOutGeneratorId(sql);
		return id;
	}
}
