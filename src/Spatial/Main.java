/* Name: Saurabh Mishra
 * USC ID: 9541758252
 * FileName: Main.java
 */
package Spatial;

public class Main {	
	public static void main(String[] args) 
	{
		DBManager dbManager = new DBManager();
		dbManager.initializeDB();
		
		Regions regions = new Regions();
		regions.fetchRegions();
		
		Ponds ponds = new Ponds();
		ponds.fetchPonds();

		Lions lions = new Lions();
		lions.fetchLions();
		
		UIManager uiManager = UIManager.getInstance();
		uiManager.initUI(regions, ponds, lions);
	}
}