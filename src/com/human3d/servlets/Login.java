package com.human3d.servlets;

import com.human3d.dbutils.DBOperations;
import com.human3d.pojo.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by rane on 12/9/14.
 */
@WebServlet(name = "Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        Doctor doc=new Doctor();
        doc.setEmailAddress(request.getParameter("uName"));
        doc.setPassword(request.getParameter("passwd"));
        DBOperations operations=new DBOperations();
        String error=null;
        try {
            doc = operations.login(doc);
        }
        catch(Exception e)
        {
                error=e.toString();
        }

        if(doc.getDocId()!=null) {
            session.setAttribute("doc", doc);
            session.setAttribute("errorL", "");
            session.setAttribute("pMap", operations.getPatientNames(Integer.parseInt(doc.getDocId())));
            response.sendRedirect("./SearchPatient.jsp?language="+request.getParameter("language"));
        }
        else
        {
            session.setAttribute("errorL", "Invalid Username or Password");
            response.sendRedirect("./Login.jsp?language="+request.getParameter("language"));
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Doctor doc=new Doctor();
        HttpSession session=request.getSession();
        doc.setDocName(request.getParameter("fName"));
        doc.setPassword(request.getParameter("passwd"));
        doc.setEmailAddress(request.getParameter("uName"));
        DBOperations dbOpearation = new DBOperations();
        doc = dbOpearation.createUser(doc);
        session.setAttribute("doc", doc);
        session.setAttribute("pMap", dbOpearation.getPatientNames(Integer.parseInt(doc.getDocId())));
        response.sendRedirect("./SearchPatient.jsp?language="+request.getParameter("language"));

    }
}
