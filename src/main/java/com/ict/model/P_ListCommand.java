package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.P_GuestDAO;
import com.ict.db.P_GuestVO;

public class P_ListCommand implements P_Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		List<P_GuestVO> list = P_GuestDAO.getList();
		request.setAttribute("list", list);
		
		return "guestbook/p_list.jsp";
	}
}
