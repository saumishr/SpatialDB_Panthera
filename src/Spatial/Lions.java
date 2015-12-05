/* Name: Saurabh Mishra
 * USC ID: 9541758252
 * FileName: Lions.java
 */
package Spatial;

import java.util.Vector;
import oracle.spatial.geometry.JGeometry;
import oracle.sql.STRUCT;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.awt.geom.Point2D.Double;

public class Lions
{
	public Lions()
	{
		lions = new Vector<Double>();
	}
	
	public void addLion(Double point)
	{
		lions.add(point);
	}
	
	public int getLionCount()
	{
		return lions.size();
	}
	
	public Double getLion(int index)
	{
		return lions.get(index);
	}
	
	@SuppressWarnings("deprecation")
	public void fetchLions()
	{
		Statement stmt = DBManager.getSQLStatementObject();
		STRUCT struct = null;
		JGeometry geomObject = null;
		ResultSet result = null;
		
		try {
			result = stmt.executeQuery("select * from lion");
		} catch (SQLException e) {
			System.out.println("Query execution Failed!");
			e.printStackTrace();
		}
		try {
			while(result.next()) {
				System.out.println("Lion ID: " + result.getString(1));
				struct = (STRUCT) result.getObject(2);	
				geomObject = JGeometry.load(struct);
				
				double coords[]  = geomObject.getPoint();
				Double point = new Double(coords[0], coords[1]);
				
				addLion(point);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private Vector<Double> lions;
}