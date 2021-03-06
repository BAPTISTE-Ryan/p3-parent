package org.occ.p3.service;

import java.util.List;

import javax.mail.Session;

import org.occ.p3.classes.ListClass.MyList;

public interface BatchService {

	public String send(String to, String sub, String msg);

	public void mailMethodOne();

	public void mailMethodTwo();

	public void mailMethodThree(Session session, String toEmail, String subject, String body);

	public List<MyList> retardUtilisateurs();

	public void TLSEmail();

	public void SSLEmail();
}