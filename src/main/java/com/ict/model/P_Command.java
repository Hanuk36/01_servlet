package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface P_Command {
	public String exec(HttpServletRequest request, HttpServletResponse response);
}
