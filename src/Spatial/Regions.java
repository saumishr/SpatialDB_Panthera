/* Name: Saurabh Mishra
 * USC ID: 9541758252
 * FileName: Regions.java
 */
package Spatial;
import java.awt.Point;
import java.awt.Shape;
import java.util.Vector;

import javax.swing.SwingUtilities;

import java.awt.geom.Point2D.Double;

import oracle.spatial.geometry.JGeometry;
import oracle.sql.STRUCT;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class Regions
{
	public Regions()
	{
		regions = new Vector<Shape>();
		regionIDs = new Vector<String>();
	}
	
	public void addRegion(Shape shape, String shapeID){
		regions.add(shape);
		regionIDs.add(shapeID);
	}
	
	public int getRegionCount()
	{
		return regions.size();
	}
	
	public Shape getRegion(int index)
	{
		return regions.get(index);
	}
	
	public void handleMouseClick(Point point)
	{
		String regionID = null;
		for (int i = 0; i < regions.size(); ++i)
		{
			Shape shape = regions.get(i);
			if (shape.contains((double)point.getX(), (double)point.getY()))
			{
				regionID = regionIDs.get(i);
				break;
			}
		}
		Vector<Shape> pondsInRegion = fetchPondsInRegion(regionID);
		Vector<Double> lionsInRegion = fetchLionsInRegion(regionID);
		UIManager.getInstance().handleMouseClick();
		SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
        		UIManager.getInstance().setFocusOnPonds(pondsInRegion);
        		UIManager.getInstance().setFocusOnLions(lionsInRegion);	
            }
        });
	}
	
	public Vector<Shape> fetchPondsInRegion(String regionID)
	{
		Vector<Shape> pondsInRegion = new Vector<Shape>();
		
		Statement stmt = DBManager.getSQLStatementObject();
		STRUCT struct = null;
		JGeometry geomObject = null;
		ResultSet result = null;
		
		try {
			String query = "SELECT P.shape " + 
					"FROM TABLE(SDO_JOIN('POND', 'SHAPE', 'REGION', 'SHAPE','mask=INSIDE')) PR, pond P, region R " + 
					"WHERE PR.rowid1 = P.rowid AND PR.rowid2 = R.rowid AND R.region_id = '" + regionID + "'";
			result = stmt.executeQuery(query);
		} catch (SQLException e) {
			System.out.println("Query execution Failed!");
			e.printStackTrace();
		}
		try {
			while(result.next()) {
				struct = (STRUCT) result.getObject(1);	
				geomObject = JGeometry.load(struct);
				Shape shape = geomObject.createShape();
				pondsInRegion.add(shape);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pondsInRegion;
	}

	public Vector<Double> fetchLionsInRegion(String regionID)
	{
		Vector<Double> lionsInRegion = new Vector<Double>();
		
		Statement stmt = DBManager.getSQLStatementObject();
		STRUCT struct = null;
		JGeometry geomObject = null;
		ResultSet result = null;
		
		try {
			String query = "SELECT L.shape " +
					"FROM TABLE(SDO_JOIN('LION', 'SHAPE', 'REGION', 'SHAPE','mask=INSIDE')) LR, lion L, region R " +
					"WHERE LR.rowid1 = L.rowid AND LR.rowid2 = R.rowid AND R.region_id = '" + regionID + "'";
			result = stmt.executeQuery(query);
		} catch (SQLException e) {
			System.out.println("Query execution Failed!");
			e.printStackTrace();
		}
		try {
			while(result.next()) {
				struct = (STRUCT) result.getObject(1);	
				geomObject = JGeometry.load(struct);
				double coords[]  = geomObject.getPoint();
				Double point = new Double(coords[0], coords[1]);

				lionsInRegion.add(point);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lionsInRegion;		
	}
	
	@SuppressWarnings("deprecation")
	public void fetchRegions()
	{
		Statement stmt = DBManager.getSQLStatementObject();
		STRUCT struct = null;
		JGeometry geomObject = null;
		ResultSet result = null;
		
		try {
			result = stmt.executeQuery("select * from region");
		} catch (SQLException e) {
			System.out.println("Query execution Failed!");
			e.printStackTrace();
		}
		try {
			while(result.next()) {
				String regionID = result.getString(1);
				System.out.println("Region ID: " + regionID);
				struct = (STRUCT) result.getObject(3);	
				geomObject = JGeometry.load(struct);
				Shape shape = geomObject.createShape();
				addRegion(shape, regionID);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private Vector<Shape> regions;
	private Vector<String> regionIDs;
}