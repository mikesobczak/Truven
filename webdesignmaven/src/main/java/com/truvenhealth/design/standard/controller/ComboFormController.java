package com.truvenhealth.design.standard.controller;

import java.util.LinkedHashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.truvenhealth.design.standard.domain.ComboForm;

@Controller
public class ComboFormController {
	
	private static Gson gson = new GsonBuilder()
	.setDateFormat("yyyy-MM-dd HH:mm:ss")
	//.serializeNulls()
	.create();
	
	@RequestMapping(value="/getComboForm", method=RequestMethod.GET)
	public ModelAndView getComboForm(HttpSession session) throws Exception
	{		
		ComboForm comboForm = new ComboForm();
				
		ModelAndView mv = new ModelAndView("combo", "comboForm", comboForm);
		
		return mv;
	}
	
	@RequestMapping(value="/getComboForm", method=RequestMethod.POST)
	public ModelAndView submitComboForm(ComboForm comboForm, HttpSession session) throws Exception
	{				
		ModelAndView mv = new ModelAndView("combo", "comboForm", comboForm);
		
		LinkedHashMap<String, String> stateList = getStateOptions(comboForm.getCountry());
		
		mv.addObject("stateList", stateList);
		
		return mv;
	}
	
	@RequestMapping("/getstates.json")
	@ResponseBody
	public String getOutputPeriods(@RequestParam("country") String country)
	{		
		String json = null;
		LinkedHashMap<String, String> stateList = getStateOptions(country);
		
		json = gson.toJson(stateList);
		
		return json;
	}
	
	private LinkedHashMap<String, String> getStateOptions(String country)
	{
		LinkedHashMap<String, String> stateList = new LinkedHashMap<String, String>();
		
		if ( country.equalsIgnoreCase("usa"))
		{
			stateList.put("IL", "Illinois");
			stateList.put("IN", "Indiana");
			stateList.put("IA", "Iowa");
			stateList.put("MI", "Michigan");
			stateList.put("MN", "Minnesota");
			stateList.put("NB", "Nebraska");
			stateList.put("OH", "Ohio");
			stateList.put("PA", "Pennsylvania");
			stateList.put("WI", "Wisonsin");
			
		}
		else if ( country.equalsIgnoreCase("canada"))
		{
			stateList.put("AB", "Alberta");
			stateList.put("BC", "British Columbia");
			stateList.put("MB", "Manitoba");
			stateList.put("NB", "New Brunswick");
			stateList.put("NL", "Newfoundland and Labrador");
			stateList.put("NS", "Nova Scotia");
			stateList.put("ON", "Ontario");
			stateList.put("PE", "Prince Edward Island");
			stateList.put("QC", "Quebec");
			stateList.put("SK", "Saskatchewan");
			
		}
		else if ( country.equalsIgnoreCase("mexico"))
		{
			stateList.put("AG", "Aguascalientes");
			stateList.put("CH", "Chihuahua");
			stateList.put("DG", "Durango");
			stateList.put("ME", "Mexico State");
			stateList.put("NA", "Nayarit");
			stateList.put("OA", "Oaxaca");
			stateList.put("PU", "Puebla");
			stateList.put("QR", "Quintana Roo");
			stateList.put("TB", "Tabasco");
			stateList.put("VE", "Veracruz");
		}
		
		return stateList;
	}

}
