package com.truvenhealth.design.standard.controller;

import java.lang.reflect.Type;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.truvenhealth.design.standard.domain.LogUserEvent;
import com.truvenhealth.design.standard.model.GridDataModel;
import com.truvenhealth.design.standard.service.DataService;

@Controller
public class LogController {
	
	private static Logger LOG = Logger.getLogger(LogController.class);
	
	@Autowired
	private DataService dataService;
	
	/*
	 * Due to thread issues between Gson and Tomcat, 
	 * one instance of a Gson object is declared for this entire class, not for each user thread.
	 * 
	 * Don't include serializeNulls(), as that will cause "null" to be displayed 
	 * in the empty columns.
	 * 
	 * Use setDateFormat() to ensure date is in a format recognizable to jqGrid.
	 */
	private static Gson gson = new GsonBuilder()
	.setDateFormat("yyyy-MM-dd HH:mm:ss")
	//.serializeNulls()
	.create();
	
	/**
	 * Provides the columns and column model for the jqGrid tag in the JSP.
	 * @return
	 */
	@RequestMapping("/getLogUserEvent")
	public ModelAndView getLogUserEvent()
	{		
		String target = "logUserEvent";
		
		ModelAndView mv = new ModelAndView(target);
		
		return mv;
	}
	
	
	
	/**
	 * Data for the Job Status page.  Used by jqGrid.
	 * @return
	 * 
	 * request parameters - 
	 * 
	 * page: Get the requested page. By default grid sets this to 1.
	 * 
	 * rows: Get how many rows we want to have into the grid - rowNum parameter in the grid.
	 * 
	 * sidx: Get index row - i.e. user click to sort.  At first time sort name parameter -
	 * after that the index from colModel.
	 * 
	 * sord: Sorting order - at first time sortorder
	 */
	@RequestMapping("/getlogusereventdata.json")
	@ResponseBody
	public String getTaskHistory(@RequestParam("page") String currentPage,
			@RequestParam("rows") String limitRows,
			@RequestParam("sidx") String sidx,
			@RequestParam("sord") String sord)
	{
		LOG.debug ( "currentPage (page) = " + currentPage );
		
		LOG.debug ( "limitRows (rows) = " + limitRows );
		
		// If we not pass at first time index use the first column for the index or what you want
		if ( sidx == null || sidx.equals("") )
			sidx = "1";
		
		LOG.debug ( "sidx = " + sidx );
		
		LOG.debug ( "sord = " + sord );
		
		int totalRows = 0;
		
		totalRows = dataService.getLogUserEventCount();
		
		LOG.debug ( "totalRows: " + totalRows );
		
		LOG.debug ( "currentPage = " + currentPage );
		
		
		// calculate the starting position of the rows
		int start = ( Integer.parseInt(limitRows) * Integer.parseInt(currentPage) ) - Integer.parseInt(limitRows);
		
		/*
		 * If for some reason start position is negative set it to 0.
		 * Typical case is that the user typed 0 for the requested page.
		 */
		if ( start < 0 )
			start = 0;
		
		LOG.debug ( "start = " + start );
		
		int max_row_to_fetch = Integer.parseInt(limitRows) * Integer.parseInt(currentPage);
		int min_row_to_fetch = start;
		
		LOG.debug ( "min_row_to_fetch = " + min_row_to_fetch );
		LOG.debug ( "max_row_to_fetch = " + max_row_to_fetch );
		
		
		String json = null;
		
		List<LogUserEvent> data = dataService.getAllLogUserEvent(sidx, sord, max_row_to_fetch, min_row_to_fetch);
		
		GridDataModel<LogUserEvent> gdm = new GridDataModel<LogUserEvent>(data, currentPage, Integer.toString(totalRows), limitRows);
		
		Type fooType = new TypeToken<GridDataModel<LogUserEvent>>() {}.getType();
		json = gson.toJson(gdm, fooType);
		
		return json;
	}
	
	/**
	 * This action is taken when the user clicks on the Assignment column in the jqGrid
	 * @return
	 */
	@RequestMapping("/viewUser")
	public ModelAndView viewUser()
	{		
		String target = "viewUser";
		
		ModelAndView mv = new ModelAndView(target);
		
		return mv;
	}

}
