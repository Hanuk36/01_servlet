package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.P_GuestDAO;

public class P_DeleteOKCommand implements P_Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		int result = P_GuestDAO.getDelete(idx);
		
		return "P_Guest?cmd=list";
		
	}
}
