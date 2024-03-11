package com.ict.model;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//String 이라는 봔환형이 JSP 파일을 가리킨다. (결과를 보여줄 
public class Command01 implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//실제 일처리
		//오늘날짜 구하기
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DATE);
		String result = year +"년" + month+"달" + day+"일";
		
		//결과를 저장하자. (request 에 저장) => 그래서 controller 에서 페이지 이동을 forward 로 함
		//forward 로 저장하는것이 있는 이것은 session 에 저장한다. 아직 안배웠다.
		//로그인은 토큰이라는 방식을 쓴다.
		request.setAttribute("res", result);  //이름은 내마음대로 짓는다.
	
		
		
		// return "결과를 보여줄 jsp 파일 위치"
		return "view/ex13_res01.jsp";
	}

}