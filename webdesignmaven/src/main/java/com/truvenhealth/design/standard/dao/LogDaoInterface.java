package com.truvenhealth.design.standard.dao;

import java.util.List;

import com.truvenhealth.design.standard.domain.LogUserEvent;

public interface LogDaoInterface {
	
	public abstract int getLogUserEventCount();
	public abstract List<LogUserEvent> getAllLogUserEvent(String sidx, String sord, int max_row_to_fetch, int min_row_to_fetch);

}
