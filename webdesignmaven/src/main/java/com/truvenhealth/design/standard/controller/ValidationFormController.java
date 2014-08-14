package com.truvenhealth.design.standard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.ValidationForm;

@Controller
public class ValidationFormController {
	
	@RequestMapping(value="/getValidationForm", method=RequestMethod.GET)
	public ModelAndView getValidationForm(HttpSession session) throws Exception
	{		
		ValidationForm validationForm = new ValidationForm();
				
		ModelAndView mv = new ModelAndView("validation", "validationForm", validationForm);
		
		return mv;
	}
	
	@RequestMapping(value="/getValidationForm", method=RequestMethod.POST)
	public ModelAndView submitValidationForm(ValidationForm validationForm, HttpSession session) throws Exception
	{				
		ModelAndView mv = new ModelAndView("validation", "validationForm", validationForm);
		
		return mv;
	}

}
