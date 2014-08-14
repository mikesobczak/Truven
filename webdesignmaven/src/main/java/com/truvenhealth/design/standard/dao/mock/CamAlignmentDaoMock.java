package com.truvenhealth.design.standard.dao.mock;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.truvenhealth.design.standard.dao.CamAlignmentDaoInterface;
import com.truvenhealth.design.standard.domain.CamAlignment;
import com.truvenhealth.design.standard.util.TestComparator;

public class CamAlignmentDaoMock implements CamAlignmentDaoInterface {
	
	private List<CamAlignment> recs;
	
	public CamAlignmentDaoMock ()
	{
		System.out.println ( "Loading CamAlignmentDaoMock" );
		
		recs = new ArrayList<CamAlignment>();
		
		CamAlignment rec = new CamAlignment();
		rec.setAcis("1001001");
		rec.setCam_territory(new Integer(74000));
		rec.setCam_value1("One");
		rec.setCam_value2("Two");
		rec.setCam_value3("Three");
		rec.setDav_rod_id(new Integer(75001));
		rec.setFacility_name("DaVita Livonia");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001002");
		rec.setCam_territory(new Integer(72000));
		rec.setCam_value1("One.1");
		rec.setCam_value2("Two.2");
		rec.setCam_value3("Three.3");
		rec.setDav_rod_id(new Integer(75002));
		rec.setFacility_name("DaVita Canton");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001003");
		rec.setCam_territory(new Integer(73000));
		rec.setCam_value1("One.3");
		rec.setCam_value2("Two.3");
		rec.setCam_value3("Three.3");
		rec.setDav_rod_id(new Integer(75003));
		rec.setFacility_name("DaVita Redford");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001004");
		rec.setCam_territory(new Integer(74000));
		rec.setCam_value1("One.4");
		rec.setCam_value2("Two.4");
		rec.setCam_value3("Three.4");
		rec.setDav_rod_id(new Integer(75004));
		rec.setFacility_name("DaVita Westland");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001005");
		rec.setCam_territory(new Integer(75000));
		rec.setCam_value1("One.5");
		rec.setCam_value2("Two.5");
		rec.setCam_value3("Three.5");
		rec.setDav_rod_id(new Integer(75005));
		rec.setFacility_name("DaVita Novi");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001006");
		rec.setCam_territory(new Integer(76000));
		rec.setCam_value1("One.6");
		rec.setCam_value2("Two.6");
		rec.setCam_value3("Three.6");
		rec.setDav_rod_id(new Integer(75006));
		rec.setFacility_name("DaVita Plymouth");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001007");
		rec.setCam_territory(new Integer(74007));
		rec.setCam_value1("One.7");
		rec.setCam_value2("Two.7");
		rec.setCam_value3("Three.7");
		rec.setDav_rod_id(new Integer(75007));
		rec.setFacility_name("DaVita Northville");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001008");
		rec.setCam_territory(new Integer(74008));
		rec.setCam_value1("One.8");
		rec.setCam_value2("Two.8");
		rec.setCam_value3("Three.8");
		rec.setDav_rod_id(new Integer(75008));
		rec.setFacility_name("DaVita Ann Arbor");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001009");
		rec.setCam_territory(new Integer(74009));
		rec.setCam_value1("One.9");
		rec.setCam_value2("Two.9");
		rec.setCam_value3("Three.9");
		rec.setDav_rod_id(new Integer(75009));
		rec.setFacility_name("DaVita Warren");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001010");
		rec.setCam_territory(new Integer(74010));
		rec.setCam_value1("One.10");
		rec.setCam_value2("Two.10");
		rec.setCam_value3("Three.10");
		rec.setDav_rod_id(new Integer(75010));
		rec.setFacility_name("DaVita Sterling Heights");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
		rec = new CamAlignment();
		rec.setAcis("1001011");
		rec.setCam_territory(new Integer(74011));
		rec.setCam_value1("One.11");
		rec.setCam_value2("Two.11");
		rec.setCam_value3("Three.11");
		rec.setDav_rod_id(new Integer(75011));
		rec.setFacility_name("DaVita Royal Oak");
		rec.setFms_am_id(new Integer(0));
		rec.setNa_short_name("");
		recs.add(rec);
		
	}

	@Override
	public int getCamAlignmentCount() {
		return recs.size();
	}

	@Override
	public List<CamAlignment> getAllCamAlignment(String sidx, String sord,
			int max_row_to_fetch, int min_row_to_fetch) {
		
		List<CamAlignment> sortList = new ArrayList<CamAlignment>();
		
		int sortOrder;
		
		if ( sord.equals("asc"))
			sortOrder = 1;
		else
			sortOrder = 0;
		
		sortList.addAll(recs);
		
		Collections.sort(sortList, new TestComparator(sidx, sortOrder));
		
		List<CamAlignment> subList = sortList.subList(min_row_to_fetch, max_row_to_fetch > sortList.size() ? sortList.size() : max_row_to_fetch );
		
		return subList;
	}

	@Override
	public CamAlignment getRecord(String acis) {
		
		CamAlignment temp = null;
		
		for ( CamAlignment cam : recs)
		{
			if ( cam.getAcis().equalsIgnoreCase(acis))
				temp = cam;
		}
		return temp;
	}

}
