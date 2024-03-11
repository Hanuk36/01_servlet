package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.OneListCommand;
import com.ict.model.P_Command;
import com.ict.model.P_DeleteCommand;
import com.ict.model.P_DeleteOKCommand;
import com.ict.model.P_ListCommand;
import com.ict.model.P_OneListCommand;
import com.ict.model.P_WriteCommand;
import com.ict.model.P_WriteOKCommand;
import com.ict.model.P_UpdateCommand;
import com.ict.model.P_UpdateOKCommand;


@WebServlet("/P_Guest")
public class P_Guest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		
		P_Command comm = null;
		
		switch (cmd) {
			case "list":
				comm = new P_ListCommand(); break;
			case "write":
				comm = new P_WriteCommand(); break;
			case "write_ok":
				comm = new P_WriteOKCommand(); break;
			case "onelist" :
				comm = new P_OneListCommand(); break;
			case "update":
				comm = new P_UpdateCommand(); break;
			case "update_ok":
				comm = new P_UpdateOKCommand(); break;
			case "delete":
				comm = new P_DeleteCommand(); break;
			case "delete_ok":
				comm = new P_DeleteOKCommand(); break;
		}
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}
