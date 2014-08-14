package com.truvenhealth.design.standard.domain;

import java.util.Date;

public class LogUserEvent {
	
	private Date event_time;
	private int event_type;
	private String user_id;
	private long assignment;
	private int effective_role_id;
	private int assignment_level;
	private Integer report_id;
	private String output_type;
	private String chart_measure1;
	private String chart_measure2;
	private Integer std_rpt_count;
	private String report_title;
	private String report_group;
	
	public Date getEvent_time() {
		return event_time;
	}
	public void setEvent_time(Date event_time) {
		this.event_time = event_time;
	}
	public int getEvent_type() {
		return event_type;
	}
	public void setEvent_type(int event_type) {
		this.event_type = event_type;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public long getAssignment() {
		return assignment;
	}
	public void setAssignment(long assignment) {
		this.assignment = assignment;
	}
	public int getEffective_role_id() {
		return effective_role_id;
	}
	public void setEffective_role_id(int effective_role_id) {
		this.effective_role_id = effective_role_id;
	}
	public int getAssignment_level() {
		return assignment_level;
	}
	public void setAssignment_level(int assignment_level) {
		this.assignment_level = assignment_level;
	}
	public Integer getReport_id() {
		return report_id;
	}
	public void setReport_id(Integer report_id) {
		this.report_id = report_id;
	}
	public String getOutput_type() {
		return output_type;
	}
	public void setOutput_type(String output_type) {
		this.output_type = output_type;
	}
	public String getChart_measure1() {
		return chart_measure1;
	}
	public void setChart_measure1(String chart_measure1) {
		this.chart_measure1 = chart_measure1;
	}
	public String getChart_measure2() {
		return chart_measure2;
	}
	public void setChart_measure2(String chart_measure2) {
		this.chart_measure2 = chart_measure2;
	}
	public Integer getStd_rpt_count() {
		return std_rpt_count;
	}
	public void setStd_rpt_count(Integer std_rpt_count) {
		this.std_rpt_count = std_rpt_count;
	}
	public String getReport_title() {
		return report_title;
	}
	public void setReport_title(String report_title) {
		this.report_title = report_title;
	}
	public String getReport_group() {
		return report_group;
	}
	public void setReport_group(String report_group) {
		this.report_group = report_group;
	}

}
