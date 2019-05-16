package org.occ.p3.webservice;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

import org.occ.p3.model.Work;
import org.occ.p3.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

@Service
@WebService(serviceName = "WorkWebServiceWeb", name = "WorkWebService")
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, use = SOAPBinding.Use.LITERAL)
public class WorkWebService {

	@Autowired
	WorkService workservice;

	@WebMethod
	public List<Work> findByAuthor(String author) {
		return workservice.findByAuthor(author);

	}

	@WebMethod
	public Work getWorkById(int workId) {
		return workservice.getWorkById(workId);

	}

	@PostConstruct
	public void init() {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
}
