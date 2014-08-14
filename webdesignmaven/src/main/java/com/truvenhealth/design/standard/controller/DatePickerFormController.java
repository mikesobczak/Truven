package com.truvenhealth.design.standard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.DatePickerForm;

@Controller
public class DatePickerFormController {
	
	@RequestMapping(value="/getDatePickerForm", method=RequestMethod.GET)
	public ModelAndView getDatePickerForm(HttpSession session) throws Exception
	{		
		DatePickerForm datePickerForm = new DatePickerForm();
				
		ModelAndView mv = new ModelAndView("datepicker", "datePickerForm", datePickerForm);
		
		return mv;
	}
	
	@RequestMapping(value="/getDatePickerForm", method=RequestMethod.POST)
	public ModelAndView submitRadioForm(DatePickerForm datePickerForm, HttpSession session) throws Exception
	{				
		ModelAndView mv = new ModelAndView("datepicker", "datePickerForm", datePickerForm);
		
		return mv;
	}

}
