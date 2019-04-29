package toerase;

import org.occ.p3.service.BatchService;
import org.occ.p3.service.BatchServiceImpl;
import org.occ.p3.webservice.WebServiceBatch;
import org.springframework.beans.factory.annotation.Autowired;

public class Toerase {

	@Autowired
	BatchService batchService;

	
	static
	BatchServiceImpl batchServiceimpl = new BatchServiceImpl();
	
	
	public static void main(String[] args) {
		
		
	}

}
