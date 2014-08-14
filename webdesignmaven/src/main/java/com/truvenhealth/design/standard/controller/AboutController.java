package com.truvenhealth.design.standard.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutController {
	
 @Value("${code.version}") 
 String _codeVersion;	
	
	@RequestMapping("/getAbout")
	public ModelAndView getAbout()
	{		
		ModelAndView mv = new ModelAndView("about", "codeVer", this._codeVersion);
		return mv;
	}
	
}
