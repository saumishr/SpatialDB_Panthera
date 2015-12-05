/* Name: Saurabh Mishra
 * USC ID: 9541758252
 * FileName: DBManager.java
 */
package Spatial;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
	private static Connection Conn = null;
	private static Statement Stmt = null;
	
	public boolean initializeDB()
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} 
		catch (ClassNotFoundException exception) {
			System.out.println("Oracle Driver Class Not found: " + exception.toString());
			return false;
		}
		try{
			Conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "saurabhm", "hello123");
		} 
		catch (SQLException e) {
			System.out.println("Connection Failed!");
			e.printStackTrace();
			return false;
		}
		try{
			Stmt = (Statement) Conn.createStatement();
		}
		catch(SQLException e) {
			System.out.println("Statement Failed!");
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public static Statement getSQLStatementObject()
	{
		return Stmt;
	}
}
