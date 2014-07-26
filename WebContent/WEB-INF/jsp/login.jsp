<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<title>Slick Login</title>
<meta name="description" content="boardFrm">
<meta name="author" content="Webdesigntuts+">
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="/springboard/js/placeholder.js"
	charset="utf-8"></script>
</head>
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
<body>

	<form id="boardFrm" action="writeProc2.do" method="post">

		<label for="username">username</label><input type="text" name="title"
			class="placeholder" placeholder="me@tutsplus.com"> <label
			for="password">password</label><input type="password" name="content"
			class="placeholder" placeholder="password"> <input
			type="submit" value="회원가입" onclick="doSubmit()">
	</form>
</body>
</html>