package com.truvenhealth.design.standard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.WatermarkForm;

@Controller
public class WatermarkFormController {
	
	@RequestMapping(value="/getWatermarkForm", method=RequestMethod.GET)
	public ModelAndView getWatermarkForm(HttpSession session) throws Exception
	{		
		WatermarkForm watermarkForm = new WatermarkForm();
				
		ModelAndView mv = new ModelAndView("watermark", "watermarkForm", watermarkForm);
		
		return mv;
	}
	
	@RequestMapping(value="/getWatermarkForm", method=RequestMethod.POST)
	public ModelAndView submitWatermarkForm(WatermarkForm watermarkForm, HttpSession session) throws Exception
	{				
		ModelAndView mv = new ModelAndView("watermark", "watermarkForm", watermarkForm);
		
		return mv;
	}

}
