package com.truvenhealth.design.standard.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.CheckboxSelectAllForm;

@Controller
public class CheckboxSelectAllFormController {
	
	@RequestMapping(value="/getCheckboxSelectAllForm", method=RequestMethod.GET)
	public ModelAndView getCheckboxForm(HttpSession session) throws Exception
	{		
		CheckboxSelectAllForm checkboxSelectAllForm = new CheckboxSelectAllForm();
		
		List<String> checkboxList = new ArrayList<String>();
		
		checkboxList.add("Checkbox 1");
		checkboxList.add("Checkbox 2");
		checkboxList.add("Checkbox 3");
		checkboxList.add("Checkbox 4");
				
		ModelAndView mv = new ModelAndView("checkBoxSelectAll", "checkboxSelectAllForm", checkboxSelectAllForm);
		
		mv.addObject("checkboxList",checkboxList);
		
		return mv;
	}
	
	@RequestMapping(value="/getCheckboxSelectAllForm", method=RequestMethod.POST)
	public ModelAndView submitCheckboxForm(CheckboxSelectAllForm checkboxSelectAllForm, HttpSession session) throws Exception
	{			
		List<String> checkboxList = new ArrayList<String>();
		
		checkboxList.add("Checkbox 1");
		checkboxList.add("Checkbox 2");
		checkboxList.add("Checkbox 3");
		checkboxList.add("Checkbox 4");
		
		ModelAndView mv = new ModelAndView("checkBoxSelectAll", "checkboxSelectAllForm", checkboxSelectAllForm);
		
		mv.addObject("checkboxList",checkboxList);
		
		return mv;
	}

}
