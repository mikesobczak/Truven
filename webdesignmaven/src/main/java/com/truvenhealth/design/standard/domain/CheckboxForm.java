package com.truvenhealth.design.standard.domain;

import java.util.ArrayList;
import java.util.List;

public class CheckboxForm {
	
	private List<String> checkboxList = new ArrayList<String>();
	private List<String> checkboxList2 = new ArrayList<String>();

	private String singleCheckbox = new String();
	
	private String disabledCheckbox = new String();

	public String getSingleCheckbox() {
		return singleCheckbox;
	}

	public void setSingleCheckbox(String singleCheckbox) {
		this.singleCheckbox = singleCheckbox;
	}

	public List<String> getCheckboxList() {
		return checkboxList;
	}

	public void setCheckboxList(List<String> checkboxList) {
		this.checkboxList = checkboxList;
	}

	public String getDisabledCheckbox() {
		return disabledCheckbox;
	}

	public void setDisabledCheckbox(String disabledCheckbox) {
		this.disabledCheckbox = disabledCheckbox;
	}

	public List<String> getCheckboxList2() {
		return checkboxList2;
	}

	public void setCheckboxList2(List<String> checkboxList2) {
		this.checkboxList2 = checkboxList2;
	}

}
