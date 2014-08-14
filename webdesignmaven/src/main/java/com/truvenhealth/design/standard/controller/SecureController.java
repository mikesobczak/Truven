package com.truvenhealth.design.standard.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.ldap.userdetails.LdapUserDetailsImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecureController {	
	
	@RequestMapping("/secure")
	public ModelAndView getSecure()
	{
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		String dn = "";
		
		if ( principal instanceof LdapUserDetailsImpl )
			dn = ((LdapUserDetailsImpl) principal).getDn();
		else if ( principal instanceof User )
			dn = "demo user";
		
		ModelAndView mv = new ModelAndView("secure", "dn", dn);
		return mv;
	}
	
}
