<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>�ݰ����ϴ�</h1>
	<a href="${rootPath}/posting/insert">������ȭ��</a>
	<a href="${rootPath}/posting/we">���������</a>
	<a href="${rootPath}/posting/detail">��������</a>
	
</body>
</html>