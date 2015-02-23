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
import java.util.Map;

/**
 * Created by rane on 12/10/14.
 */
@WebServlet(name = "Patient")
public class Patient extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String pName=request.getParameter("pName");
        System.out.println(pName);
        Map<String,String> pMap=(Map<String,String>)session.getAttribute("pMap");
        String id=pMap.get(pName);
        com.human3d.pojo.Patient info=new com.human3d.pojo.Patient();
        info.setpName(pName);
        info.setpId(id);
        DBOperations operation=new DBOperations();
        info = operation.getInfo(info);
        session.setAttribute("patient", info);
        response.sendRedirect("./Landing.jsp?language="+request.getParameter("language"));

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBOperations oper = new DBOperations();
        HttpSession session = request.getSession();
        Doctor doc=(Doctor) session.getAttribute("doc");
        oper.createPatient(request.getParameter("pName"),doc.getDocId());
        session.setAttribute("pMap", oper.getPatientNames(Integer.parseInt(doc.getDocId())));
        response.sendRedirect("./SearchPatient.jsp?language=" + request.getParameter("language"));
    }
}
