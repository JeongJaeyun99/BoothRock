<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String user_tel = (String)request.getParameter("phone_number");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모든 축제의 부스를 담다 - 부스락</title>
	<style>
		.new-pw-form {
			width: 400px;
			height: 265px;
			border: 1px solid #000;
			border-radius: 15px;
			margin : 250px 800px;
		}
		.input-form {
			width: 320px;
			height: 165px;
			margin: 40px 30px;
			text-align: center;
		}
		.input-form div {
			height: 35px;
			margin: 30px 0px;
		}
		.input-form div label {
			font-weight: bold;
			line-height: 35px;
			float: left;
			text-align: center;
			width: 140px;
		}
		.input-form div input {
			width: 150px;
			height: 35px;
			border: 1px solid #000;
			background-color: #fff;
			border-radius: 15px;
			font-weight: bold;
			float: left;
			padding: 0px 10px;
			text-align: center;
		}
		.input-form div button {
			width: 62px;
			height: 35px;
			float: right;
			border-radius: 15px;
			border: 1px solid #808080;
			color: #808080;
			background-color: #fff;
			font-weight: 600;
		}
		.input-form div button:hover {
			background-color: #ddd;
		}
		.pw-edit {
			width: 120px;
			height: 40px;
			border: 1px solid #000;
			background-color: #fff;
			border-radius: 15px;
			font-weight: bold;
			text-align: center;
			margin-top: 15px;
			font-size: 15px;
		}
		.pw-edit:hover {
			background-color: #ddd;
		}
	</style>
	<script src="resources/js/new_pw.js" defer type="text/javascript"></script>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%
		if(user_tel == null){
	%>
		<script type="text/javascript">
			alert("휴대폰 인증을 먼저 진행해주세요!");
			location.href="find_password_num.jsp";
		</script>
   	<% }else{ %>
	   	<div class="new-pw-form">
	   		<h3 style="text-align: center;">새 비밀번호 변경</h3>
	   		<form action = "edit_password" class="input-form" method="post">
	   			<input type="hidden" id="user_tel" name="user_tel" value="<%= user_tel %>">
	   			<div>
	    			<label for="user_password">새 비밀번호</label>
					<input type="password" id="user_password" name="user_password" required>
					<div id="password_box"></div>
	   			</div>
	   			<div>
	    			<label for="user_password_check">새 비밀번호 확인</label>
					<input type="password" id="user_password_check" name="user_password_check" required>
					<div id="password_box2"></div>
	   			</div>
	   			<input type="submit" class="pw-edit" value="비밀번호 변경">
	   		</form>
	   	</div>
   	<% } %>
   	<%@ include file="footer.jsp" %>
</body>
</html>
