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
        <label for="boardTitle">����:</label><br>
        <input type="text" id="boardTitle" name="boardTitle"><br>
        
        <label for="boardContent">����:</label><br>
        <textarea id="boardContent" name="boardContent"></textarea><br>
        
        <label for="memberId">�ۼ���:</label><br>
        <input type="text" id="memberId" name="memberId"><br>
        
        <input type="submit" value="�����ϱ�">
        
    </form>

</body>
</html>