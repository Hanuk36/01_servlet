package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.P_GuestDAO;
import com.ict.db.P_GuestVO;

public class P_UpdateCommand implements P_Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		P_GuestVO gvo = P_GuestDAO.getOneList(idx);
		request.setAttribute("gvo", gvo);

		return "guestbook/p_update.jsp";
	}
}
