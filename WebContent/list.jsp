<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.EmaillistDao"%>
<%@ page import="com.javaex.vo.EmailVo"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	<!-- 메일정보 리스트 -->
	<% 
		List<EmailVo> eList = new EmaillistDao().getList();
		int no;
		String lastName, firstName, email;
	
		for(EmailVo vo : eList){
			no = vo.getNo();
			lastName = vo.getLastName();
			firstName = vo.getFirstName();
			email = vo.getEmail();
	%>

	<table border="1" cellpadding="5" cellspacing="2">
		<tr>
			<td align=right width="110">Last name:</td>
			<td width="170"><%=lastName %></td>
		</tr>
		<tr>
			<td align=right>First name:</td>
			<td><%=firstName %></td>
		</tr>
		<tr>
			<td align=right>Email address:</td>
			<td><%=email %></td>
		</tr>
	</table>
	<br>

	<% } %>

	<p>
		<a href="form.jsp">추가메일 등록</a>
	</p>
	<br>
</body>
</html>