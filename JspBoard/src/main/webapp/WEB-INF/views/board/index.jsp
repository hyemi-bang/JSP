<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- JSTL(Core Tag Library)�� ����ϱ� ���� ����
  JSTL�� JSP ���������� ���� ���Ǵ� ǥ�� �±� ���̺귯����, �������� �帧 ����, �ݺ�, ���ǹ� ���� ���� ���� �ٷ� �� �ֵ��� �Ѵ� 
  prefix="c"�� JSTL �±׿� ����� ���ξ ����. ���⼭ "c"�� "core"
  uri="http://java.sun.com/jsp/jstl/core"�� ����� �±� ���̺귯���� ��ġ--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ��� �� ����Ʈ</title>
</head>
<body>

	<h1>board list</h1>


	<table border="2">
		<tr>
			<th>No.</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Timestamp</th>
			<th>View</th>
		</tr>

		<c:forEach items="${boards}" var="board">
			<tr>
				<td>${board.board_id}</td>
				<td><a href="./detail?board_id=${board.board_id}">${board.board_title}</a></td>
				<td>${board.board_writer}</td>
					<%-- ${} ǥ�� ���(Expression Language, EL)
					JSP �������� ���� ǥ���� ������ �� �ִ� ���
					board�� �����Ϸ��� ��ü�� �����Դϴ�.
					board_writer�� board ��ü�� �Ӽ� �Ǵ� �Ӽ����� �˻��Ϸ��� �Ӽ� 
					EL ǥ������ JSP���� JavaBeans, ��û(request), ����(session),
					�Ǵ� ���ø����̼�(application) ���������� �����Ϳ� �����ϰ� ǥ���ϴ� �� ���� ���
					���� �������� �� �������� ȿ����--%>
				<td>${board.write_date}</td>
				<td>${board.view_count}</td>
			</tr>
		</c:forEach>
	</table>

	<button id="writeBtn">�۾���</button>

	<c:url value="/resources/board/js/inde.js" var="indexJS"></c:url>
	<c:url value="./write" var="writePageURL"></c:url>

	
	<script>
		const writePageURL = '${writePageURL}';
	</script>
	
	<script src="${indexJS}"></script>
	

</body>
</html>