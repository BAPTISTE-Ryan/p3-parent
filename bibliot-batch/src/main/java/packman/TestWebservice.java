package packman;

import org.occ.p3.webservice.BatchWebService;
import org.occ.p3.webservice.BatchWebServiceWeb;

public class TestWebservice {

	public static void main(String[] args) {

		BatchWebServiceWeb batchwebserviceweb = new BatchWebServiceWeb();
		BatchWebService batchservice = batchwebserviceweb.getBatchWebServicePort();
		batchservice.init();
		batchservice.retardUtilisateur();

		int i = 0;
		String k = "";
		for (int j = 0; j < 30; j++) {
			try {
				k = k + "\n" + batchservice.retardUtilisateur().get(j).getC();
			} catch (Exception e) {
				i = j;
				System.out.println(j);
			}
		}

	}

}
