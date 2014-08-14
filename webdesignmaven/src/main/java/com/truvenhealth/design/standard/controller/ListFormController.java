package com.truvenhealth.design.standard.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.ListForm;

@Controller
public class ListFormController {
	
	@RequestMapping(value="/getListForm", method=RequestMethod.GET)
	public ModelAndView getListForm(HttpSession session) throws Exception
	{		
		ListForm listForm = new ListForm();
		
		List<String> itemList = new ArrayList<String>();
		itemList.add("All");
		itemList.add("List Item 1");
		itemList.add("List Item 2");
		itemList.add("List Item 3");
		itemList.add("List Item 4");
		
		ModelAndView mv = new ModelAndView("listBox", "listForm", listForm);
		
		mv.addObject("itemList",itemList);
		
		return mv;
	}
	
	@RequestMapping(value="/getListForm", method=RequestMethod.POST)
	public ModelAndView submitListForm(ListForm listForm, HttpSession session) throws Exception
	{				

		List<String> itemList = new ArrayList<String>();
		itemList.add("All");
		itemList.add("List Item 1");
		itemList.add("List Item 2");
		itemList.add("List Item 3");
		itemList.add("List Item 4");
		
		ModelAndView mv = new ModelAndView("listBox", "listForm", listForm);
		
		mv.addObject("itemList",itemList);
		return mv;
	}

}
