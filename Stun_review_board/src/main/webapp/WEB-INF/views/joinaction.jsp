<%@page import="com.stun.review_board.dto.MemberDTO"%>
<%@page import="com.stun.review_board.dao.MemberDAO"%>
<%@ page import= "java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	MemberDTO dto = new MemberDTO();
	if(request.getParameter("nickname")!=null)
	{
		dto.setNickname(request.getParameter("nickname"));
	}
	if(request.getParameter("name")!=null)
	{
		dto.setNickname(request.getParameter("name"));
	}
	if(request.getParameter("id")!=null)
	{
		dto.setNickname(request.getParameter("id"));
	}
	if(request.getParameter("pw")!=null)
	{
		dto.setNickname(request.getParameter("pw"));
	}
	
	//하나라도 빈칸있는경우
	if(dto.getName().equals("") || dto.getNickname().equals("")|| dto.getId().equals("")|| dto.getPw().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('다시 확인해주세요.')");
		script.println("</script>");
		script.close();
		return;
	}
	
	//ID와 비밀번호가 모두 있는 경우
	/* MemberDAO dao = new MemberDAO();
	int result = dao.insert(dto.getName().equals("") || dto.getNickname().equals("")|| dto.getId().equals("")|| dto.getPw().equals(""));
	if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다')");
		script.println("history.back()");
		script.println("</script>");
	}else{//정상구동(result==1)
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입 성공!!!')");
		script.println("location.href='../St_Join/main.jsp'");
		script.println("</script>");
		script.close();
		return;
	}	 */

%>
</body>
</html>