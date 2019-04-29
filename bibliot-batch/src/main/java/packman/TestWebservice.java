package packman;

import java.util.List;

 
import org.occ.p3.webservice.BatchWebService;
import org.occ.p3.webservice.BatchWebServiceWeb;
import org.occ.p3.webservice.Session;
import org.occ.p3.webservice.Work;
import org.occ.p3.webservice.WorkWebService;
import org.occ.p3.webservice.WorkWebServiceWeb;
 

public class TestWebservice {

	 
	public static void main(String[] args) {
////////////////////////////////////////////////////////////////////////////////////////////////
		
		BatchWebServiceWeb batchwebserviceweb = new BatchWebServiceWeb();
		BatchWebService batchservice = batchwebserviceweb.getBatchWebServicePort();
		batchservice.init();
		  batchservice.retardUtilisateur();
		  
			////////////////////////////////////////////////////////////////////////////////////////////////
		 
				int i = 0;
			 String k="";
			 for (int j = 0; j <30; j++) {
				try {
					k=k+"\n"+batchservice.retardUtilisateur().get(j).getC();
				} catch (Exception e) {
					i=j;
					System.out.println(j);
				}
			}
			 System.out.println("================================================================");
			 System.out.println("================================================================");
			 
				 System.out.println(k);
				 System.out.println(i);
				 
				 System.out.println("================================================================");
				 System.out.println(i);
				 System.out.println("================================================================");
			 
				 
		///////////////////////////////////////////////////////////////////////////////////////////////		
////////////////////////////////////////////////////////////////////////////////////////////////
	}

}
