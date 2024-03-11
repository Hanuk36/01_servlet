package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestVO;
import com.ict.db.P_GuestDAO;
import com.ict.db.P_GuestVO;

public class P_UpdateOKCommand implements P_Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String idx = request.getParameter("idx");
		
		P_GuestVO gvo = new P_GuestVO();
		
		gvo.setIdx(idx);
		gvo.setName(request.getParameter("name"));
		gvo.setSubject(request.getParameter("subject"));
		gvo.setContent(request.getParameter("content"));
		gvo.setEmail(request.getParameter("email"));	
		
		
		int result = P_GuestDAO.getUpdate(gvo);
		
		return "P_Guest?cmd=onelist&idx="+idx;
				
	}
}
