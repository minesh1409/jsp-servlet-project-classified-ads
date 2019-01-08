/**
 * Mar 28, 2017 1:00:27 PM
 */
package pojo;


public class PostPojo 
{
	private String category;
	private String describead;	
	private double price;
	private int id;
	private boolean negosiable;
	private String picture1;
	private String picture2;
	private String picture3;
	private String ownertype;
	private boolean isavaliable;
	private boolean isapprove;
	private int subCategoryId;
	private int userId;
	private String subCategoryName;
	private String location;
	private String firstName;
	private String lastName;
	private int categoryId;
	
	/**
	 * @return the categoryId
	 */
	public int getCategoryId() {
		return categoryId;
	}


	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}


	public String getFirstName() {
		return firstName;
	}

	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	
	public String getLastName() {
		return lastName;
	}

	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getDescribead() {
		return describead;
	}
	
	public void setDescribead(String describead) {
		this.describead = describead;
	}
	
	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	public boolean getNegosiable() {
		return negosiable;
	}
	
	public void setNegosiable(Boolean negosiable) {
		this.negosiable = negosiable;
	}
	
	public String getPicture1() {
		return picture1;
	}
	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}

	public String getPicture2() {
		return picture2;
	}

	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}

	public String getPicture3() {
		return picture3;
	}

	public void setPicture3(String picture3) {
		this.picture3 = picture3;
	}

	
	public String getOwnertype() {
		return ownertype;
	}
	
	public void setOwnertype(String ownertype) {
		this.ownertype = ownertype;
	}
	
	public boolean isIsavaliable() {
		return isavaliable;
	}
	
	public void setIsavaliable(boolean isavaliable) {
		this.isavaliable = isavaliable;
	}
	
	public boolean isIsapprove() {
		return isapprove;
	}
	
	public void setIsapprove(boolean isapprove) {
		this.isapprove = isapprove;
	}

	/**
	 * @return the subCategoryId
	 */
	public int getSubCategoryId() {
		return subCategoryId;
	}

	/**
	 * @param subCategoryId the subCategoryId to set
	 */
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * @return the subCategoryName
	 */
	public String getSubCategoryName() {
		return subCategoryName;
	}

	/**
	 * @param subCategoryName the subCategoryName to set
	 */
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}
	
}
