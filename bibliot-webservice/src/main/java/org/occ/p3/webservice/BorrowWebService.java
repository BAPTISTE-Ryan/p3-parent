package org.occ.p3.webservice;



import javax.annotation.PostConstruct;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import org.occ.p3.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

@Service
@WebService(serviceName = "BorrowWebServiceWeb", name = "BorrowWebService")
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, use = SOAPBinding.Use.LITERAL)
public class BorrowWebService {

	@Autowired
	BorrowService borrowservice;

	@WebMethod
	public Boolean borrowBook(int workId, int memberId) {
		return borrowservice.borrowBook(workId, memberId);
	}

	@WebMethod
	public Boolean endBorrow(int borrowId) {
		return borrowservice.endBorrow(borrowId);
	}

	@WebMethod
	public Boolean extendBorrow(int borrowId) {
		return borrowservice.extendBorrow(borrowId);
	}

	@PostConstruct
	public void init() {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
}
