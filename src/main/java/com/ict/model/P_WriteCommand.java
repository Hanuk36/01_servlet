package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class P_WriteCommand implements P_Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "guestbook/p_write.jsp";
	}
}
