/**
 * May 11, 2017 12:04:09 PM
 */
package pojo;

/**
 * @author ASUS
 *
 */
public class LocationPojo 
{
	private int id;
	private String locationname;
	private int zipcode;
	
	public int getId() {
		return id;
	}

	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getLocationname() {
		return locationname;
	}
	
	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}
	
	public int getZipcode() {
		return zipcode;
	}
	
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
}
