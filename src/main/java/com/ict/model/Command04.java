package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command04 implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일처리 (성적처리)
		String name = request.getParameter("name");
		//String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		//int ko = Integer.parseInt(kor);
		int ko = Integer.parseInt(request.getParameter("kor"));
		int en = Integer.parseInt(eng);
		int ma = Integer.parseInt(math);
		
		int sum = ko + en + ma;
		double avg = (int)(sum/3.0*10)/10.0;
		String hak="";
		
		if(avg >=90) {
			hak = "A학점";
		}else if(avg>=80) {
			hak = "B학점";
		}
		else if(avg>=70) {
			hak = "C학점";	
		}
		else {
			hak = "F학점";
		}
		
		//String res ="이름: "+ name + " 총점: " + sum + " 평균: " + avg + " 학점: " + hak;
		//별도로 한개씩 저장할수 있다.
		request.setAttribute("name", name);
		request.setAttribute("sum", sum);
		request.setAttribute("avg", avg);
		request.setAttribute("hak", hak);
		
		return "view/ex14_res.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
