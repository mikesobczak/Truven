package com.truvenhealth.design.standard.domain;

import java.util.ArrayList;
import java.util.List;

public class ListForm {

	private List<String> itemList1 = new ArrayList<String>();
	private List<String> itemList2 = new ArrayList<String>();
	private List<String> itemList3 = new ArrayList<String>();

	public List<String> getItemList1() {
		
		return itemList1;
	}

	public void setItemList1(List<String> itemList1) {
		
		this.itemList1 = itemList1;
	}

	public List<String> getItemList2() {
		return itemList2;
	}

	public void setItemList2(List<String> itemList2) {
		this.itemList2 = itemList2;
	}

	public List<String> getItemList3() {
		return itemList3;
	}

	public void setItemList3(List<String> itemList3) {
		this.itemList3 = itemList3;
	}
	
	
}
