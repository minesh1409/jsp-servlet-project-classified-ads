/**
 * Mar 22, 2017 9:24:49 PM
 */
package pojo;

/**
 * @author ASUS
 *
 */
public class RegisterPojo 
{
	private int id;
	private int usertype;
	private String firstname;
	private String lastname;
	private long contact;
	private String address;
	private int location;
	private String email;
	private String password;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getUsertype() {
		return usertype;
	}
	
	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}
	
	public String getFirstname() {
		return firstname;
	}
	
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public String getLastname() {
		return lastname;
	}
	
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public long getContact() {
		return contact;
	}

	
	public void setContact(long contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public int getLocation() 
	{
		return location;
	}
	public void setLocation(int location) 
	{
		this.location = location;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
		
}
