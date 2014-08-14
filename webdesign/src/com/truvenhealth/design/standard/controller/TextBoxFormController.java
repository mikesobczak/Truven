package com.truvenhealth.design.standard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.TextBoxForm;

@Controller
public class TextBoxFormController {
	
	@RequestMapping(value="/getTextBoxForm", method=RequestMethod.GET)
	public ModelAndView getTextBoxForm(HttpSession session) throws Exception
	{		
		TextBoxForm textBoxForm = new TextBoxForm();
				
		ModelAndView mv = new ModelAndView("textBox", "textBoxForm", textBoxForm);
		
		return mv;
	}
	
	@RequestMapping(value="/getTextBoxForm", method=RequestMethod.POST)
	public ModelAndView submitTextBoxForm(TextBoxForm textBoxForm, HttpSession session) throws Exception
	{				
		ModelAndView mv = new ModelAndView("textBox", "textBoxForm", textBoxForm);
		
		return mv;
	}

}
