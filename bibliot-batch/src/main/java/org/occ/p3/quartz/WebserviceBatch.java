package org.occ.p3.quartz;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.occ.p3.webservice.BatchWebService;
import org.occ.p3.webservice.BatchWebServiceWeb;
import org.occ.p3.webservice.Borrow;
import org.occ.p3.webservice.User;
import org.occ.p3.webservice.WorkWebService;
import org.occ.p3.webservice.WorkWebServiceWeb;
import packman.Mailsendtest;
public class WebserviceBatch implements Job {

	public void execute(JobExecutionContext context) throws JobExecutionException {

////////////////////////////////////////////////////////////////////////////////////////////////

		BatchWebServiceWeb batchwebserviceweb = new BatchWebServiceWeb();
		BatchWebService batchservice = batchwebserviceweb.getBatchWebServicePort();
		batchservice.init();
		batchservice.retardUtilisateur();

////////////////////////////////////////////////////////////////////////////////////////////////
		Mailsendtest m = new Mailsendtest();
		int i = 0;
		String k = "";
		for (int j = 0; j < 30; j++) {
			try {
				// from password to sub msg
				m.send("mr.ryan.baptiste@gmail.com",
						m.pdp,
						"mr.ryan.baptiste@gmail.com",
						batchservice.retardUtilisateur().get(j).getB(),
						batchservice.retardUtilisateur().get(j).getC());
				
			} catch (Exception e) {
				i = j;
				System.out.println(j);
			}
		}



///////////////////////////////////////////////////////////////////////////////////////////////	

	}

}