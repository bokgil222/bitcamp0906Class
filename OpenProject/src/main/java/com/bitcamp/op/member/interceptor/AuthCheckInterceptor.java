package com.bitcamp.op.member.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthCheckInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(
			HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		
		HttpSession session = request.getSession(false);
		
		// 세션 확인 하고 -> 속성에 loginInfo 가 존재하면 true 반환
		if(session != null && session.getAttribute("loginInfo") != null) {
			return true;
		}
			
		// 세션 확인 하고 -> 속성에 loginInfo 가 존재하지 않으면 false 반환
		// 로그인 페이지로 이동 : referer 파라미터로 요청했던 URL 전달
		String url = request.getRequestURL().toString();
		
		response.sendRedirect(
				request.getContextPath()+"/member/login?referer="+request.getRequestURL().toString());
		
		return false;
	}
}