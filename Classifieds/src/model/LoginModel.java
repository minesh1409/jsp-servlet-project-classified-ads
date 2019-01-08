/**
 * May 13, 2017 4:06:45 PM
 */
package model;

import dbconnection.Dbcon;

/**
 * @author ASUS
 *
 */
public class LoginModel 
{

	Dbcon dbcon;
	public LoginModel()
	{ 
		dbcon = Dbcon.getinstance(); 
	}
}
