package service;

import entity.Beach;
import entity.Tide;

public interface TideService {
	/**
	* Get Tide By Beach
	*
	* @param beach 
	* @throws java.Nullpoint.exception
	*/
	public Tide getTideByBeach(Beach beach);
	
	/**
	* Change Tide Data
	*
	* @param tide 
	* @throws java.Nullpoint.exception
	*/
	public Tide changeTideData(Tide tide);
}
