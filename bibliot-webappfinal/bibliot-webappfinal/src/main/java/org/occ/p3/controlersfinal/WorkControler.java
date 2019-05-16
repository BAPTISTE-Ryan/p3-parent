
package org.occ.p3.controlersfinal;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.occ.p3.webservice.Work;
import org.occ.p3.webservice.WorkWebService;
import org.occ.p3.webservice.WorkWebServiceWeb;

@Controller
public class WorkControler {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(ModelMap model, HttpServletRequest request) {

		return new ModelAndView("mainPAGES.jsp");
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView entryPoint(ModelMap model, HttpServletRequest request) {

		return new ModelAndView("mainPAGES.jsp");
	}

	@RequestMapping(value = "/searchByAuthor", method = RequestMethod.POST)
	public ModelAndView doSearch(HttpServletRequest request) {

		WorkWebServiceWeb workwebserviceweb = new WorkWebServiceWeb();
		WorkWebService workwebservice = workwebserviceweb.getWorkWebServicePort();
		workwebservice.init();

		ModelAndView m = new ModelAndView("resultsPAGES.jsp");

		String authorName = request.getParameter("searchAuthor");

		List<Work> works = workwebservice.findByAuthor(authorName);
		ArrayList<Work> work = (ArrayList<Work>) works;
		m.addObject("listOfWorks", work);
		return m;
	}

}
