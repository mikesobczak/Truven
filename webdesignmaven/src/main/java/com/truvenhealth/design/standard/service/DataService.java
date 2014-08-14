package com.truvenhealth.design.standard.service;

import java.util.List;

import com.truvenhealth.design.standard.dao.LogDaoInterface;
import com.truvenhealth.design.standard.domain.LogUserEvent;

public class DataService {
	
	private LogDaoInterface logDao;

	public LogDaoInterface getLogDao() {
		return logDao;
	}

	public void setLogDao(LogDaoInterface logDao) {
		this.logDao = logDao;
	}
	
	public int getLogUserEventCount()
	{
		return logDao.getLogUserEventCount();
	}
	
	public List<LogUserEvent> getAllLogUserEvent(String sidx, String sord, int max_row_to_fetch, int min_row_to_fetch)
	{
		return logDao.getAllLogUserEvent(sidx, sord, max_row_to_fetch, min_row_to_fetch);
	}


}
