package com.mkyong.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.parse4j.Parse;
import org.parse4j.ParseException;
import org.parse4j.ParseObject;
import org.parse4j.ParseQuery;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getData( HttpServletRequest request) throws ParseException {

		ModelAndView model = new ModelAndView("hello");
	    
	    Parse.initialize("yzQlOHXEjzXLbv3R9LMoE42ZYQlq9xJ8sVBu0vNy", "qM6xwjfHRgm6k6J287Z8gYiuz6UwOasqkqY8pUNn");
	    
	    ParseQuery<ParseObject> queryItem = new ParseQuery("item");
	    List<ParseObject> listItem = new ArrayList<ParseObject>();
	    listItem = queryItem.find();
	    for(ParseObject item : listItem){
	    	System.out.println("Team 1: " + item.get("team1") + "title: " + item.get("shortDescription"));
	    }
	    request.setAttribute("listItem", listItem);
	    
	    
	    ParseQuery<ParseObject> queryTeam = new ParseQuery("team");
	    List<ParseObject> listTeam = new ArrayList<ParseObject>();
	    listTeam = queryTeam.find();
	    for(ParseObject team : listTeam){
	    	System.out.println("Name: " + team.get("name") + "title: " + team.get("title"));
	    }
	    request.setAttribute("listTeam", listTeam);
	    
	   
		return model;

	}

}	