<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>/sample/admin page</h1>
	
	<p>principal : <sec:authentication property="principal"/> </p>
	<p>사용자아이디 : <sec:authentication property="principal.username"/>
	<p>memberVO : <sec:authentication property="principal.member"/> </p>

	<p>사용자이름 : <sec:authentication property="principal.member.userName"/> </p>

	<p>권한 : <sec:authentication property="principal.member.authList"/> 
	<%-- <p>role : <sec:authentication property="principal.member.authList."/>  --%>

	<a href="/customLogout">Logout</a>
</body>
</html>