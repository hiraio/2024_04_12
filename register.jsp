<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

 	 <form action="register.do" method="post">
        <label for="boardTitle">제목:</label><br>
        <input type="text" id="boardTitle" name="boardTitle"><br>
        
        <label for="boardContent">내용:</label><br>
        <textarea id="boardContent" name="boardContent"></textarea><br>
        
        <label for="memberId">작성자:</label><br>
        <input type="text" id="memberId" name="memberId"><br>
        
        <input type="submit" value="가입하기">
        
    </form>

</body>
</html>