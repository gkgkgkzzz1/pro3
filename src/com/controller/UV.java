package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.model.weatherDAO;


@WebServlet("/UV")
public class UV extends HttpServlet {
   private static final long serialVersionUID = 1L;


   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
      HttpSession session = request.getSession();
      
      weatherDAO weatherdao = new weatherDAO();
      
		/* ArrayList<String> uvlist = weatherdao.uvtoday(); */
      
		/* PrintWriter out = response.getWriter(); */
      
		/* System.out.println("uvlist: " + uvlist); */
      
		/* session.setAttribute("uv", uvlist); */
      
      response.sendRedirect("aaa.jsp");
   }

}