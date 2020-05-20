<%@page import="com.javatpoint.dao.UserDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
boolean status=UserDao.checklogin(u);
if(status){
response.sendRedirect("loginSuccess.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
 

%>
</body>
</html>