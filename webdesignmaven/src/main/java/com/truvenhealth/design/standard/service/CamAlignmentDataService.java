package com.truvenhealth.design.standard.service;

import java.util.List;

import com.truvenhealth.design.standard.dao.CamAlignmentDaoInterface;
import com.truvenhealth.design.standard.domain.CamAlignment;

public class CamAlignmentDataService {
	
	private CamAlignmentDaoInterface camAlignmentDao;
	

	public CamAlignmentDaoInterface getCamAlignmentDao() {
		return camAlignmentDao;
	}

	public void setCamAlignmentDao(CamAlignmentDaoInterface camAlignmentDao) {
		this.camAlignmentDao = camAlignmentDao;
	}

	public int getCamAlignmentCount()
	{
		
		return camAlignmentDao.getCamAlignmentCount();
	}
	
	public List<CamAlignment> getAllCamAlignment(String sidx, String sord, int max_row_to_fetch, int min_row_to_fetch)
	{
		
		return camAlignmentDao.getAllCamAlignment(sidx, sord, max_row_to_fetch, min_row_to_fetch);
	}
	
	public CamAlignment getRecord(String acis)
	{
		return camAlignmentDao.getRecord(acis);
	}


}
