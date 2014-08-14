package com.truvenhealth.design.standard.domain;


public class CamAlignment {

	
	private String acis;
	private Integer cam_territory;
	private String facility_name;
	private String cam_value1;
	private String cam_value2;
	private String cam_value3;
	private String na_short_name;
	
	private Integer fms_am_id;
	private Integer dav_rod_id;
	
	public String getAcis() {
		return acis;
	}
	public void setAcis(String acis) {
		this.acis = acis;
	}
	
	public Integer getCam_territory() {
		return cam_territory;
	}
	public void setCam_territory(Integer cam_territory) {
		this.cam_territory = cam_territory;
	}
	public String getFacility_name() {
		return facility_name;
	}
	public void setFacility_name(String facility_name) {
		this.facility_name = facility_name;
	}
	public String getCam_value1() {
		return cam_value1;
	}
	public void setCam_value1(String cam_value1) {
		this.cam_value1 = cam_value1;
	}
	public String getCam_value2() {
		return cam_value2;
	}
	public void setCam_value2(String cam_value2) {
		this.cam_value2 = cam_value2;
	}
	public String getCam_value3() {
		return cam_value3;
	}
	public void setCam_value3(String cam_value3) {
		this.cam_value3 = cam_value3;
	}
	
	public Integer getFms_am_id() {
		return fms_am_id;
	}
	public void setFms_am_id(Integer fms_am_id) {
		this.fms_am_id = fms_am_id;
	}
	public Integer getDav_rod_id() {
		return dav_rod_id;
	}
	public void setDav_rod_id(Integer dav_rod_id) {
		this.dav_rod_id = dav_rod_id;
	}
	
	public String getNa_short_name() {
		return na_short_name;
	}
	public void setNa_short_name(String na_short_name) {
		this.na_short_name = na_short_name;
	}
	
}
