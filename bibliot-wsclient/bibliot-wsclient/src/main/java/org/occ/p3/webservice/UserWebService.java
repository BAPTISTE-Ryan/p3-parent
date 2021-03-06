
package org.occ.p3.webservice;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.10
 * Generated source version: 2.2
 * 
 */
@WebService(name = "UserWebService", targetNamespace = "http://webservice.p3.occ.org/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface UserWebService {


    /**
     * 
     */
    @WebMethod
    @RequestWrapper(localName = "init", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.Init")
    @ResponseWrapper(localName = "initResponse", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.InitResponse")
    @Action(input = "http://webservice.p3.occ.org/UserWebService/initRequest", output = "http://webservice.p3.occ.org/UserWebService/initResponse")
    public void init();

    /**
     * 
     * @param arg0
     * @return
     *     returns org.occ.p3.webservice.User
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getUserByPassword", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.GetUserByPassword")
    @ResponseWrapper(localName = "getUserByPasswordResponse", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.GetUserByPasswordResponse")
    @Action(input = "http://webservice.p3.occ.org/UserWebService/getUserByPasswordRequest", output = "http://webservice.p3.occ.org/UserWebService/getUserByPasswordResponse")
    public User getUserByPassword(
        @WebParam(name = "arg0", targetNamespace = "")
        int arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns org.occ.p3.webservice.User
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getUserById", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.GetUserById")
    @ResponseWrapper(localName = "getUserByIdResponse", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.GetUserByIdResponse")
    @Action(input = "http://webservice.p3.occ.org/UserWebService/getUserByIdRequest", output = "http://webservice.p3.occ.org/UserWebService/getUserByIdResponse")
    public User getUserById(
        @WebParam(name = "arg0", targetNamespace = "")
        int arg0);

    /**
     * 
     * @param arg0
     * @return
     *     returns org.occ.p3.webservice.User
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getUserByName", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.GetUserByName")
    @ResponseWrapper(localName = "getUserByNameResponse", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.GetUserByNameResponse")
    @Action(input = "http://webservice.p3.occ.org/UserWebService/getUserByNameRequest", output = "http://webservice.p3.occ.org/UserWebService/getUserByNameResponse")
    public User getUserByName(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0);

    /**
     * 
     * @param arg1
     * @param arg0
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "authentificate", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.Authentificate")
    @ResponseWrapper(localName = "authentificateResponse", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.AuthentificateResponse")
    @Action(input = "http://webservice.p3.occ.org/UserWebService/authentificateRequest", output = "http://webservice.p3.occ.org/UserWebService/authentificateResponse")
    public boolean authentificate(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        String arg1);

    /**
     * 
     * @param arg0
     * @return
     *     returns org.occ.p3.webservice.User
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "saveNewUser", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.SaveNewUser")
    @ResponseWrapper(localName = "saveNewUserResponse", targetNamespace = "http://webservice.p3.occ.org/", className = "org.occ.p3.webservice.SaveNewUserResponse")
    @Action(input = "http://webservice.p3.occ.org/UserWebService/saveNewUserRequest", output = "http://webservice.p3.occ.org/UserWebService/saveNewUserResponse")
    public User saveNewUser(
        @WebParam(name = "arg0", targetNamespace = "")
        User arg0);

}
