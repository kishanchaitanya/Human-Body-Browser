package com.human3d.servlets;

import com.human3d.dbutils.DBOperations;
import com.human3d.pojo.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

/**
 * Created by rane on 12/10/14.
 */
@WebServlet(name = "Pointers")
public class Pointers extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        System.out.print(request.getParameter("data"));
        String[] data=request.getParameter("data").split("&");

        String x=data[1],y=data[2],view="0",val=data[3],z=data[0];
        HttpSession session = request.getSession();
        com.human3d.pojo.Patient info=(com.human3d.pojo.Patient)session.getAttribute("patient");
        Position pos=new Position();
        pos.setView("0");
        pos.setData(val);
        pos.setX(x);
        pos.setY(y);
        pos.setZ(z);
        DBOperations operation=new DBOperations();
        System.out.println(info.getpName());
        operation.saveData(pos,info.getpId());
        response.sendRedirect("./HumanThreeD.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.setAttribute("patient",(com.human3d.pojo.Patient)session.getAttribute("patient"));
        response.sendRedirect("./HumanThreeD.jsp");
    }
}
