package org.occ.p3.webservice;

import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import org.occ.p3.model.Member;
import org.occ.p3.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

@Service
@WebService(serviceName = "MemberWebServiceWeb", name = "MemberWebService")
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, use = SOAPBinding.Use.LITERAL)
public class MemberWebService {

	@Autowired
	MemberService memberservice;

	@WebMethod
	public Member getMemberById(int memberId) {
		return memberservice.getMemberById(memberId);
	}

	@WebMethod
	public Member saveNewMember(Member member) {
		return memberservice.saveNewMember(member);
	}

	@WebMethod
	public List<Member> getMemberByAddress(String memberAddress) {
		return memberservice.getMemberByAddress(memberAddress);
	}

	@WebMethod
	public List<Member> getMemberByBirthdate(Date memberDate) {
		return memberservice.getMemberByBirthdate(memberDate);
	}

	@WebMethod
	public List<Member> getMemberByEmailadress(String userEmailadress) {
		return memberservice.getMemberByEmailadress(userEmailadress);
	}

	@WebMethod
	public List<Member> getMemberByName(String memberName) {
		return memberservice.getMemberByName(memberName);
	}

	@PostConstruct
	public void init() {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
}
