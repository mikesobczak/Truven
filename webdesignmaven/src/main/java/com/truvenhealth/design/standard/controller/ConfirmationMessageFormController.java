package com.truvenhealth.design.standard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.ConfirmationMessageForm;

@Controller
public class ConfirmationMessageFormController {
	
	@RequestMapping(value="/getConfirmationMessageForm", method=RequestMethod.GET)
	public ModelAndView getConfirmationMessageForm(HttpSession session) throws Exception
	{		
		ConfirmationMessageForm confirmationMessageForm = new ConfirmationMessageForm();
				
		ModelAndView mv = new ModelAndView("confirmationMessage", "confirmationMessageForm", confirmationMessageForm);
		
		return mv;
	}
	
	@RequestMapping(value="/getConfirmationMessageForm", method=RequestMethod.POST)
	public ModelAndView submitConfirmationMessageForm(ConfirmationMessageForm confirmationMessageForm, HttpSession session) throws Exception
	{				
		ModelAndView mv = new ModelAndView("confirmationMessage", "confirmationMessageForm", confirmationMessageForm);
		
		return mv;
	}

}
