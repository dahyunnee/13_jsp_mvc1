<%@page import="step2_00_loginEx.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_loginPro.jsp</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
	
	
		boolean isValidMember = MemberDAO.getInstance().login(id, passwd);
		
		if(isValidMember){
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(60 * 10);	//세션 유효기간 설정 (10분)
														//예시 ) 60 * 10 > 10분
														//예시 ) 60 * 60 > 1시간
														//예시 ) 60 * 60 * 24 > 1일

			response.sendRedirect("00_main.jsp");		//jsp 페이지 이동 메소드 : response.sendRedirect("이동경로");		

		}else{
			
	%>
		<script>				//jsp에는 alert기능이 존재하지 않음.
			alert("check your Id and Password");
			history.go(-1);
		</script>
	<% 
			
		}
	%>

</body>
</html>