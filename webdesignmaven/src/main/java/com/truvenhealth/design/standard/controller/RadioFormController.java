package com.truvenhealth.design.standard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.RadioForm;

@Controller
public class RadioFormController {
	
	@RequestMapping(value="/getRadioForm", method=RequestMethod.GET)
	public ModelAndView getRadioForm(HttpSession session) throws Exception
	{		
		RadioForm radioForm = new RadioForm();
				
		ModelAndView mv = new ModelAndView("radio", "radioForm", radioForm);
		
		return mv;
	}
	
	@RequestMapping(value="/getRadioForm", method=RequestMethod.POST)
	public ModelAndView submitRadioForm(RadioForm radioForm, HttpSession session) throws Exception
	{				
		ModelAndView mv = new ModelAndView("radio", "radioForm", radioForm);
		
		return mv;
	}

}
