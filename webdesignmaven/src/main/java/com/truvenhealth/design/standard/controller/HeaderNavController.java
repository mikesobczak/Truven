package com.truvenhealth.design.standard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HeaderNavController {
	
	@RequestMapping("/home")
	public ModelAndView getHome()
	{		
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}

	@RequestMapping("/formHome")
	public ModelAndView getFormHome()
	{		
		ModelAndView mv = new ModelAndView("formHome");
		return mv;
	}
	
	@RequestMapping("/sample")
	public ModelAndView getSample()
	{		
		ModelAndView mv = new ModelAndView("sample");
		return mv;
	}
	
	@RequestMapping("/taskMenu")
	public ModelAndView getTaskMenu()
	{		
		ModelAndView mv = new ModelAndView("taskMenu");
		return mv;
	}
	
	@RequestMapping("/taskMenuGroups")
	public ModelAndView getTaskMenuGroups()
	{		
		ModelAndView mv = new ModelAndView("taskMenuGroups");
		return mv;
	}
	
	@RequestMapping("/taskMenuGroupIcons")
	public ModelAndView getTaskMenuGroupIcons()
	{		
		ModelAndView mv = new ModelAndView("taskMenuGroupIcons");
		return mv;
	}
	
	@RequestMapping("/taskMenuDisabled")
	public ModelAndView getTaskMenuDisabled()
	{		
		ModelAndView mv = new ModelAndView("taskMenuDisabled");
		return mv;
	}
	
	@RequestMapping("/scrollingHome")
	public ModelAndView getScrollingHome()
	{		
		ModelAndView mv = new ModelAndView("scrollingHome");
		return mv;
	}
	
	@RequestMapping("/links")
	public ModelAndView getLinks()
	{		
		ModelAndView mv = new ModelAndView("links");
		return mv;
	}
	
	@RequestMapping("/stylingDetails")
	public ModelAndView getStylingDetails()
	{		
		ModelAndView mv = new ModelAndView("stylingDetails");
		return mv;
	}
	
}
