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
	System.out.println("detail.jsp�� �̵��Ϸ�");
	BoardVO vo = (BoardVO) request.getAttribute("vo");
	System.out.print(vo);
	%>
	
	<table>
		<thead>
			<tr>
				<th>�Խñ� ID</th>
				<th>����</th>
				<th>����</th>
				<th>�ۼ���</th>
				<th>�ۼ���</th>
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
        <input type="submit" value="�Խñ� ����">
    </form>
    <form action="delete.do" method="get">
        <%-- ȸ�� Ż�� ��ư --%>
        <input type="submit" value="�Խñ� Ż��">
    </form>
	

</body>
</html>