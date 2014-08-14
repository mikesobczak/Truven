package com.truvenhealth.design.standard.dao;

import java.util.List;

import com.truvenhealth.design.standard.domain.CamAlignment;

public interface CamAlignmentDaoInterface {
	
	public abstract int getCamAlignmentCount();
	public abstract List<CamAlignment> getAllCamAlignment(String sidx, String sord, int max_row_to_fetch, int min_row_to_fetch);
	public abstract CamAlignment getRecord(String acis);

}
