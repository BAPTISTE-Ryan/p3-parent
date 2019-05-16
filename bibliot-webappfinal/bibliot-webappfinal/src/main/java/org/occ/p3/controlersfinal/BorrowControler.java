package org.occ.p3.controlersfinal;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.occ.p3.webservice.Borrow;
import org.occ.p3.webservice.BorrowWebService;
import org.occ.p3.webservice.BorrowWebServiceWeb;
import org.occ.p3.webservice.User;
import org.occ.p3.webservice.UserWebService;
import org.occ.p3.webservice.UserWebServiceWeb;
import org.occ.p3.webservice.WorkWebService;
import org.occ.p3.webservice.WorkWebServiceWeb;

@Controller
public class BorrowControler {

	@RequestMapping(value = "/Extend", method = RequestMethod.GET, params = { "borrow" })
	public ModelAndView Extend(@RequestParam(value = "borrow", required = true) Integer borrowId,
			HttpServletRequest request) {

		BorrowWebServiceWeb borrowwebserviceweb = new BorrowWebServiceWeb();
		BorrowWebService borrowService = borrowwebserviceweb.getBorrowWebServicePort();
		borrowService.init();

		ModelAndView modelAndViews = new ModelAndView();
		Boolean borrowExtend = borrowService.extendBorrow(borrowId);
		modelAndViews.addObject("feedBackBorrowMessage", "le pret de  bien été prolongé");
		modelAndViews.setViewName("/borrowlist");
		return modelAndViews;
	}

	@RequestMapping(value = "/borrowEnd", method = RequestMethod.GET, params = { "borrow" })
	public ModelAndView borrowEnd(@RequestParam(value = "borrow", required = true) Integer borrowId,
			HttpServletRequest request) {

		BorrowWebServiceWeb borrowwebserviceweb = new BorrowWebServiceWeb();
		BorrowWebService borrowService = borrowwebserviceweb.getBorrowWebServicePort();
		borrowService.init();

		ModelAndView modelAndViews = new ModelAndView();
		Boolean borrowEnd = borrowService.endBorrow(borrowId);
		modelAndViews.addObject("feedBackBorrowMessage", "le pret a bien été terminé");
		modelAndViews.setViewName("/borrowlist");
		return modelAndViews;
	}

	@RequestMapping(value = "/borrowlist", method = RequestMethod.GET)
	public ModelAndView borrowListMethods(HttpServletRequest request) {

		WorkWebServiceWeb workwebserviceweb = new WorkWebServiceWeb();
		WorkWebService workservice = workwebserviceweb.getWorkWebServicePort();

		UserWebServiceWeb userwebserviceweb = new UserWebServiceWeb();
		UserWebService userService = userwebserviceweb.getUserWebServicePort();

		workservice.init();
		userService.init();
		ModelAndView modelAndView = new ModelAndView("borrowPAGES.jsp");

		int userId = (Integer) request.getSession().getAttribute("userId");

		User user = userService.getUserById(userId);

		List<Borrow> borrows = user.getBorrow();
		List<String> titles = new ArrayList<String>();
		List<String> authors = new ArrayList<String>();

		for (int i = 0; i < borrows.size(); i++) {
			int workId = borrows.get(i).getBook().getWorkId();

			titles.add(workservice.getWorkById(workId).getAuthor());
			authors.add(workservice.getWorkById(workId).getTitle());
		}
		modelAndView.addObject("titles", titles);
		modelAndView.addObject("authors", authors);
		modelAndView.addObject("listOfBorrows", borrows);

		return modelAndView;
	}

	@RequestMapping(value = "/borrow", method = RequestMethod.GET, params = { "workId" })
	public ModelAndView borrowing(@RequestParam(value = "workId", required = true) Integer workId,
			HttpServletRequest request) {

		BorrowWebServiceWeb borrowwebserviceweb = new BorrowWebServiceWeb();
		BorrowWebService borrowService = borrowwebserviceweb.getBorrowWebServicePort();
		borrowService.init();

		ModelAndView modelAndView = new ModelAndView();

		Integer userId = (Integer) request.getSession().getAttribute("userId");

		if (userId != null) {
			userId = (int) userId;
			boolean borrowStatus = borrowService.borrowBook(workId, userId);

			if (borrowStatus == false) {
				modelAndView.addObject("customMessage", "erreur sur le pret");
				modelAndView.setViewName("errorPAGES.jsp");
				return modelAndView;
			}

			modelAndView.setViewName("/borrowlist");
			modelAndView.addObject("feedBackBorrowMessage", "Pret du livre réussi");

		} else {

			String view = "loginPAGES.jsp";

			modelAndView.addObject("customMessage", "utilisateur non connecté et vue non retourné");

			modelAndView.setViewName(view);
		}

		return modelAndView;
	}

}
