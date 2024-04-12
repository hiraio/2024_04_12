<%@ page import = "java.util.List " %>
<%@ page import = "edu.web.domain.BoardVO" %>
<%@ page import = "java.util.ArrayList" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <%
	request.setCharacterEncoding("UTF-8");

	System.out.println("list.jsp로 도착");
	List<BoardVO> list = (List<BoardVO>)request.getAttribute("list");
	for(int i = 0 ; i < list.size(); i++){
		System.out.println(list.get(i).toString());
	}
	
%>     --%>
<h1>게시판</h1>
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
            <% 
            // 서버로부터 받은 게시물 리스트
            List<BoardVO> list = (List<BoardVO>)request.getAttribute("list");
            if (list != null) {
                for (BoardVO board : list) {
            %>
            <tr>
                 <td> <a href="http://localhost:8080/Web09_MVC/detail.do?boardId=<%= board.getBoardId() %>">
                 <%= board.getBoardId() %></a></td>
                <td><%= board.getBoardTitle() %></td>
                <td><%= board.getBoardContent() %></td>
                <td><%= board.getMemberId() %></td>
                <td><%= board.getBoardDateCreated() %></td>
            </tr>
            <% 
                }
            } else {
            %>
            <tr>
                <td colspan="5">게시물이 없습니다.</td>
            </tr>
            <% } %>
        </tbody>
    </table>

    
    
</body>
</html>