/* Name: Saurabh Mishra
 * USC ID: 9541758252
 * FileName: Ponds.java
 */

package Spatial;
import java.awt.Shape;
import java.util.Vector;

import oracle.spatial.geometry.JGeometry;
import oracle.sql.STRUCT;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class Ponds
{
	public Ponds()
	{
		ponds = new Vector<Shape>();
	}
	
	public void addPond(Shape shape){
		ponds.add(shape);
	}
	
	public int getPondCount()
	{
		return ponds.size();
	}
		
	public Shape getPond(int index)
	{
		return ponds.get(index);
	}
	@SuppressWarnings("deprecation")
	public void fetchPonds()
	{
		Statement stmt = DBManager.getSQLStatementObject();
		STRUCT struct = null;
		JGeometry geomObject = null;
		ResultSet result = null;
		
		try {
			result = stmt.executeQuery("select * from pond");
		} catch (SQLException e) {
			System.out.println("Query execution Failed!");
			e.printStackTrace();
		}
		try {
			while(result.next()) {
				System.out.println("Pond ID: " + result.getString(1));
				struct = (STRUCT) result.getObject(2);	
				geomObject = JGeometry.load(struct);
				Shape shape = geomObject.createShape();
				addPond(shape);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private Vector<Shape> ponds;
}