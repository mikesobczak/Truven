package com.truvenhealth.design.standard.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.truvenhealth.design.standard.domain.AddItemForm;
import com.truvenhealth.design.standard.domain.CommandButtonForm;
import com.truvenhealth.design.standard.domain.DeleteItemForm;
import com.truvenhealth.design.standard.domain.ModifyItemForm;

@Controller
public class CommandButtonFormController {
	
	private static Logger LOG = Logger.getLogger(CommandButtonFormController.class);
	
	@RequestMapping(value="/getCommandButtonForm", method=RequestMethod.GET)
	public ModelAndView getCommandButtonForm(HttpSession session) throws Exception
	{		

		CommandButtonForm commandButtonForm = new CommandButtonForm();
		
				
		ModelAndView mv = new ModelAndView("commandButtons", "commandButtonForm", commandButtonForm);

		return mv;
	}
	
	@RequestMapping(value="/addItem", method=RequestMethod.GET)
	public ModelAndView getAddItemForm(HttpSession session) throws Exception
	{		
		AddItemForm addItemForm = new AddItemForm();
				
		ModelAndView mv = new ModelAndView("addItem", "addItemForm", addItemForm);
		
		return mv;
	}
	
	@RequestMapping(value="/addItem", method=RequestMethod.POST)
	public ModelAndView submitAddItemForm(AddItemForm addItemForm, HttpSession session) throws Exception
	{				
		
		@SuppressWarnings("unchecked")
		List<String> itemList = (List<String>) session.getAttribute("itemList");
		if(itemList==null)
		{
			itemList= new ArrayList<String>();
		}
		
		LOG.debug(addItemForm.getAddItemText());
		itemList.add(addItemForm.getAddItemText());
		session.setAttribute("itemList",itemList);
		AddItemForm blankForm = new AddItemForm();
		
		ModelAndView mv = new ModelAndView("addItem", "addItemForm", blankForm);
		
		mv.addObject("message", "Successfully Added: " + addItemForm.getAddItemText());
		
		return mv;
	}
	
	
	@RequestMapping(value="/modifyItem", method=RequestMethod.GET)
	public ModelAndView getModifyItemForm(@RequestParam("index") String modifyItemIndex, HttpSession session) throws Exception
	{		
		ModifyItemForm modifyItemForm = new ModifyItemForm();
		modifyItemForm.setModifyItemIndex(modifyItemIndex);
		
		ModelAndView mv = new ModelAndView("modifyItem", "modifyItemForm", modifyItemForm);
		
		@SuppressWarnings("unchecked")
		List<String> itemList = (List<String>) session.getAttribute("itemList");
		
		String itemValue = itemList.get(Integer.parseInt(modifyItemIndex));
		
		mv.addObject("message", "Modify: " + itemValue);
		
		return mv;
	}
	
	@RequestMapping(value="/modifyItem", method=RequestMethod.POST)
	public ModelAndView submitModifyItemForm(ModifyItemForm modifyItemForm, HttpSession session) throws Exception
	{				
		
		@SuppressWarnings("unchecked")
		List<String> itemList = (List<String>) session.getAttribute("itemList");
		
		LOG.debug(modifyItemForm.getModifyItemText());
		
		itemList.set(Integer.parseInt(modifyItemForm.getModifyItemIndex()),modifyItemForm.getModifyItemText());
		
		session.setAttribute("itemList",itemList);
		ModifyItemForm blankForm = new ModifyItemForm();
		
		ModelAndView mv = new ModelAndView("commandButtons", "modifyItemForm", blankForm);
		
		mv.addObject("message", "Successfully Modified");
		
		return mv;
	}
	
	@RequestMapping(value="/deleteItem", method=RequestMethod.GET)
	public ModelAndView getDeleteItemForm(@RequestParam("index") String deleteItemIndex, HttpSession session) throws Exception
	{		
		DeleteItemForm deleteItemForm = new DeleteItemForm();
		
		deleteItemForm.setDeleteItemIndex(deleteItemIndex);
		
		@SuppressWarnings("unchecked")
		List<String> itemList = (List<String>) session.getAttribute("itemList");
		session.getAttribute("index");
		String itemValue = itemList.get(Integer.parseInt(deleteItemIndex));
		
		ModelAndView mv = new ModelAndView("deleteItem", "deleteItemForm", deleteItemForm);
		
		mv.addObject("itemValue", itemValue);
		
		mv.addObject("message", "Item to be deleted: " + itemValue);
		return mv;
	}
	
	@RequestMapping(value="/deleteItem", method=RequestMethod.POST)
	public ModelAndView submitModifyItemForm(DeleteItemForm deleteItemForm, HttpSession session) throws Exception
	{				
		
		@SuppressWarnings("unchecked")
		List<String> itemList = (List<String>) session.getAttribute("itemList");
		
		LOG.debug(deleteItemForm.getDeleteItemIndex());
		
		itemList.remove(Integer.parseInt(deleteItemForm.getDeleteItemIndex()));
		session.setAttribute("itemList",itemList);
	
		DeleteItemForm blankForm = new DeleteItemForm();
		
		ModelAndView mv = new ModelAndView("commandButtons", "deleteItemForm", blankForm);
		
		mv.addObject("message", "Successfully Deleted");
		
		return mv;
	}

}
