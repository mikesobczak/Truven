package com.truvenhealth.design.standard.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageLayoutController {
	
	@RequestMapping("/pageLayout")
	public ModelAndView getAbout()
	{		
		ModelAndView mv = new ModelAndView("pageLayout");
		return mv;
	}
	
}
