<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.EmailVo"%>
<%@ page import="com.javaex.dao.EmaillistDao"%>

<%
	request.setCharacterEncoding("UTF-8");
	String lastName = request.getParameter("ln");
	String firstName = request.getParameter("fn");
	String email = request.getParameter("email");

	EmailVo vo = new EmailVo(1, lastName, firstName, email);

	EmaillistDao dao = new EmaillistDao();
	dao.insert(vo);
	
	response.sendRedirect("list.jsp");
%>