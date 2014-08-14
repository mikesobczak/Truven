package com.truvenhealth.design.standard.model;

import java.util.List;

public class GridDataModel<T> {
	
	/*
	 * The requested page. By default grid sets this to 1.  
	 * "page" parameter from the request.
	 */
	private String currentPage;
	
	// Count of rows returned by the query.
	private String totalRows;
	
	/*
	 * How many rows we want to have displayed in the grid.
	 * "rowNum" setting in the grid.  
	 * "row" parameter from the request.
	 */
	private String limitRows;
	
	// Calculated here, based on total rows to display and total rows returned by the query.
	private String totalPages;
	
	/*
	 * Generic list of data to be returned.
	 */
	private List<T> data;

	public GridDataModel(List<T> data, String currentPage, String totalRows, String limitRows )
	{
		this.data = data;
		this.currentPage = currentPage;
		this.totalRows = totalRows;
		this.limitRows = limitRows;
		
		int currentPageInt = Integer.parseInt(currentPage);
		int totalRowsInt = Integer.parseInt(totalRows);
		int limitRowsInt = Integer.parseInt(limitRows);
		int totalPagesInt = 0;
		
		// Calculate the total pages for the query
		if ( totalRowsInt > 0 && limitRowsInt > 0 )
			totalPagesInt = (int) Math.ceil((double)totalRowsInt/(double)limitRowsInt);
		else
			totalPagesInt = 0;
		
		this.totalPages = Integer.toString(totalPagesInt);
		
		/*
		 * If for some reason the requested page is greater than the total
		 * set the requested page to total page
		 */
		if ( currentPageInt > totalPagesInt )
			this.currentPage = this.totalPages;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	public String getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(String totalRows) {
		this.totalRows = totalRows;
	}

	public String getLimitRows() {
		return limitRows;
	}

	public void setLimitRows(String limitRows) {
		this.limitRows = limitRows;
	}

	public String getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(String totalPages) {
		this.totalPages = totalPages;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}
	
}
