<%@ page import="edu.web.domain.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	System.out.println("detail.jsp로 이동완료");
	BoardVO vo = (BoardVO) request.getAttribute("vo");
	System.out.print(vo);
	%>
	
	<table>
		<thead>
			<tr>
				<th>게시글 ID</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=vo.getBoardId()%></td>
				<td><%=vo.getBoardTitle()%></td>
				<td><%=vo.getBoardContent()%></td>
				<td><%=vo.getMemberId()%></td>
				<td><%=vo.getBoardDateCreated()%></td>
			</tr>
		</tbody>
		
	</table>
	
	 <form action="update.do" method="get">
        <input type = "hidden" name ="boardId" value="<%=vo.getBoardId() %>">
        <input type="submit" value="게시글 수정">
    </form>
    <form action="delete.do" method="get">
        <%-- 회원 탈퇴 버튼 --%>
        <input type="submit" value="게시글 탈퇴">
    </form>
	

</body>
</html>