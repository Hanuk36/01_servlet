package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.P_GuestDAO;
import com.ict.db.P_GuestVO;

public class P_WriteOKCommand implements P_Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String name    = request.getParameter("name");
		String subject = request.getParameter("subject");
		String email   = request.getParameter("email"); 
		String pwd     = request.getParameter("pwd");
		String content = request.getParameter("content"); 
		
		P_GuestVO gov = new P_GuestVO();
		gov.setName(name);
		gov.setSubject(subject);
		gov.setEmail(email);
		gov.setPwd(pwd);
		gov.setContent(content);
		
		int result = P_GuestDAO.getInsert(gov);
		
		return "P_Guest?cmd=list";
	}
}
