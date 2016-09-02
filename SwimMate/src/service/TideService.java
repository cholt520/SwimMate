package service;

import entity.Beach;
import entity.Tide;

public interface TideService {
	public Tide getTideByBeach(Beach beach);
}
