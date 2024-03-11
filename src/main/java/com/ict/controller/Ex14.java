package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.Command01;
import com.ict.model.Command02;
import com.ict.model.Command03;
import com.ict.model.Command04;
import com.ict.model.Command05;

//14번은 선생님이 한것 참고
//14번은 선생님이 한것 참고
//14번은 선생님이 한것 참고
@WebServlet("/Ex14")
public class Ex14 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		
		Command comm = null;
		
		//한개라도 value 값을 줘서 switch-case 문을 만든다.
		switch (cmd) {
		case "1":
			comm  = new Command04(); break;
		case "2":
			comm  = new Command05(); break;
		}
		
		String path = comm.exec(request, response);
		//request 의 정보를 가지고 가야 한다. => 포워딩 한다.
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
