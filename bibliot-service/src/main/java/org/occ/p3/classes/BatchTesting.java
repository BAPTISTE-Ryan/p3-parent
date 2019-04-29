package org.occ.p3.classes;  
 

import org.springframework.beans.factory.*;  
import org.springframework.beans.factory.xml.XmlBeanFactory;  
import org.springframework.core.io.*;
import org.springframework.stereotype.Service; 


public class BatchTesting {   
public static void main(String[] args) {  
      
Resource r=new ClassPathResource("applicationContext.xml");  
BeanFactory b=new XmlBeanFactory(r);  
MailMail m=(MailMail)b.getBean("mailMail");  
String sender="mr.ryan.baptiste@gmail.com";//write here sender gmail id  
String receiver="mr.ryan.baptiste@gmail.com";//write here receiver id  
m.sendMail(sender,receiver,"hi","welcome");  
      
System.out.println("success");  


}  
public  void batchted( ) {  
    
Resource r=new ClassPathResource("applicationContext.xml");  
BeanFactory b=new XmlBeanFactory(r);  
MailMail m=(MailMail)b.getBean("mailMail");  
String sender="mr.ryan.baptiste@gmail.com";//write here sender gmail id  
String receiver="mr.ryan.baptiste@gmail.com";//write here receiver id  
m.sendMail(sender,receiver,"hi","welcome");  
      
System.out.println("success");  

}  
}  