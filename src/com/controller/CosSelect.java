package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemHistoryDAO;
import com.model.MemHistoryDTO;

@WebServlet("/CosSelect")
public class CosSelect extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
		String proName = request.getParameter("proName");
		
		response.getWriter().write(getJSON(proName));
	
	
	}
	
	public String getJSON(String proName) {
		if(proName == null) proName = "";
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		MemHistoryDAO dao = new MemHistoryDAO();
		ArrayList<MemHistoryDTO> array = dao.CosSelect(proName);
		for(int i = 0; i<array.size(); i++) {
			result.append("[{\"value\":\""+ array.get(i).getCompany()+"\"},");
			result.append("{\"value\":\""+ array.get(i).getProName()+"\"},");
			result.append("{\"value\":\""+ array.get(i).getPath()+"\"},");
		}
		result.append("]}");
		return result.toString();
	}

}
