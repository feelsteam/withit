<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function doSubmit() {

		if (boardFrm.userid.value == "") {

			alert("제목을 입력해주세요.");
			return;
		}
		if (boardFrm.userpwd.value == "") {
			alert("내용을입력해주세요.");
			return;
		}
		boardFrm.submit()
	}
</script>
</head>
<table border="1" width="600px">
	<form name="boardFrm" action="writeProc2.do" method="post">
		<tr>
			<td height="30" width="10%" bgcolor="#dddddd" align="center">제목
			</td>
			<td align="left" height="30"><input type="text" size="80"
				maxLength="150" name="userid" id=userid></td>
		</tr>
		<tr>
			<td height="30" bgcolor="#dddddd" align="center">내용</td>
			<td><textarea cols="60" rows="15" name="userpwd" id=userpwd></textarea><br />
				<br /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" value="전송"
				onclick="doSubmit()"></td>

		</tr>
	</form>
</table>
</html>