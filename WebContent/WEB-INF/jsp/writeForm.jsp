<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function doSubmit() {

		if (boardFrm.title.value == "") {

			alert("제목을 입력해주세요.");
			return;
		}
		if (boardFrm.content.value == "") {
			alert("내용을입력해주세요.");
			return;
		}
		boardFrm.submit()
	}
</script>
</head>
<body bgcolor="#323B55">

	<form id="boardFrm" action="writeProc2.do" method="post">

		<label for="username">username</label><input type="text" name="title"
			class="placeholder" placeholder="me@tutsplus.com"></br> <label
			for="password">password</label><input type="password" name="content"
			class="placeholder" placeholder="password">
	</form>
</body>
</html>