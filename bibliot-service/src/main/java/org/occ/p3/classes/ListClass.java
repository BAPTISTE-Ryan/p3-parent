package org.occ.p3.classes;

public class ListClass {
	public static class MyList {
        private String a = null;
        private String b = null;
        private String c = null;

        public String getA() {return a;}public void setA(String aa) {this.a = aa;}
        public String getB() {return b;}public void setB(String bb) {this.b = bb;}
        public String getC() {return c;}public void setC(String cc) {this.c = cc;}

		public MyList(String aa, String bb, String cc) {
            this.a = aa;
            this.b = bb;
            this.c = cc;
        }
    }
}
