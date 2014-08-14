package com.truvenhealth.design.standard.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.CheckboxForm;

@Controller
public class CheckboxFormController {
	
	@RequestMapping(value="/getCheckboxForm", method=RequestMethod.GET)
	public ModelAndView getCheckboxForm(HttpSession session) throws Exception
	{		
		CheckboxForm checkboxForm = new CheckboxForm();
		
		List<String> checkboxList = new ArrayList<String>();
		
		checkboxList.add("Checkbox 1");
		checkboxList.add("Checkbox 2");
		checkboxList.add("Checkbox 3");
		checkboxList.add("Checkbox 4");
				
		ModelAndView mv = new ModelAndView("checkBox", "checkboxForm", checkboxForm);
		
		mv.addObject("checkboxList",checkboxList);
		
		return mv;
	}
	
	@RequestMapping(value="/getCheckboxForm", method=RequestMethod.POST)
	public ModelAndView submitCheckboxForm(CheckboxForm checkboxForm, HttpSession session) throws Exception
	{			
		List<String> checkboxList = new ArrayList<String>();
		
		checkboxList.add("Checkbox 1");
		checkboxList.add("Checkbox 2");
		checkboxList.add("Checkbox 3");
		checkboxList.add("Checkbox 4");
		
		ModelAndView mv = new ModelAndView("checkBox", "checkboxForm", checkboxForm);
		
		mv.addObject("checkboxList",checkboxList);
		
		return mv;
	}

}
