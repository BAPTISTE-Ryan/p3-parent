package org.occ.p3.webservice;

import org.occ.p3.classes.ListClass.MyList;

import org.occ.p3.service.BatchService;
import org.occ.p3.service.BatchServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.annotation.PostConstruct;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

import java.util.List;

@Service
@WebService(serviceName = "BatchWebServiceWeb", name = "BatchWebService")
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, use = SOAPBinding.Use.LITERAL)
public class WebServiceBatch {

	static BatchServiceImpl batchServiceimpl = new BatchServiceImpl();

	@Autowired
	BatchService batchService;

	@WebMethod
	public void send(String to, String sub, String msg) {
		batchService.send(to, sub, msg);
	}

	@WebMethod
	public void mailMethodOne() {
		batchService.mailMethodOne();
	}

	@WebMethod
	public void mailMethodTwo() {
		batchService.mailMethodTwo();
	}

	@WebMethod
	public void mailMethodThree(javax.mail.Session session, String to, String sub, String msg) {
		batchService.mailMethodThree(session, to, sub, msg);
	}

	@WebMethod
	public void send1(String to, String sub, String msg) {
		batchServiceimpl.send(to, sub, msg);
	}

	BatchServiceImpl bs = new BatchServiceImpl();

	@WebMethod
	public void send2(String to, String sub, String msg) {
		bs.send(to, sub, msg);
	}

	@WebMethod
	public List<MyList> retardUtilisateur() {
		return batchService.retardUtilisateurs();
	}

	@PostConstruct
	public void init() {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
}