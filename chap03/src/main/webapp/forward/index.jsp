<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># Forward</h3>

	<ul>
		<li>����ڰ� ���� ��û�� �� ���������� �Ϻ� ó���ϰ� ���� ���������� �Ѱ� ó���ϴ°�</li>
		<li>��û, ���� ��ü�� �״�� ���� ���������� �����ϱ� ������ �ش� ��û�� �Ƿ��ִ� �Ķ���͵鵵 �״�� �Բ�
			���޵ȴ�</li>
	</ul>
	
	<h3># Forward�� �뵵</h3>
	
	<ul>
		<li>������������ �ڹ� �ڵ带 ����� ���ϰ�, .jsp���Ͽ����� HTML�ڵ� �ۼ��� ���ϴ�</li>
		<li>�ϳ��� ��û�� ���� ���������� 
			1���� �ڹٿ� ���õ� ��� ó���� ��ģ �� �����带 ���� 
			2���� .jsp�������� �Ѱ� HTML �ڵ忡 ���� ó���� ��ġ�� ����� �ַ� ����Ѵ�</li>
		<li>�̰��� view(JSP)�� controller(dispatcher + service�� ������ ���� / JAVA)�� �и���� �Ѵ�</li>
		<li>�����带 ����ϸ� ���� view �������� ��ġ�� ������� �ʴ´� (� ������ ���ļ� �� �������� ������������� Ŭ���̾�Ʈ�� �𸥴�)</li>
		<li></li>
	</ul>
	

	<h3># forward test1</h3>

	<form action="/chap03/forward/test/1" method="GET">
		<input type="hidden" name="firstName" value="Smith" /> <input
			type="hidden" name="lastName" value="king" /> <input type="submit"
			value="������" />
	</form>

	<h3># forward test2</h3>

	<p>JSP�� servlet�̱� ������ form���� ��û ������ ���� �����ϴ�</p>

	<form action="/chap03/forward/forwardTestJsp.jsp" method="GET">
		<input type="hidden" name="firstName" value="Smith" /> <input
			type="hidden" name="lastName" value="king" /> <input type="submit"
			value="������" />
	</form>

	<h3># Redirect</h3>

	<ul>
		<li>��û�� ������ �ش� ��û�� ���� Ŭ���̾�Ʈ���� �ٸ� �ּҷ� �ٽ� ��û ������� �����ϴ°�</li>
		<li>�����̷�Ʈ�� ���ο� ��û�� �ٽ� ������ ���̱� ������ ���� ��û�� ���´� �Ķ���ʹ� �⺻������ �������� ��
			����</li>
		<li>ó�� ��û���´� �ּҰ� �״�� ���� ���� �ʴ´�</li>
	</ul>

	<h3># redirect test1</h3>

	<form action="/chap03/forward/test/2" method="GET">
		<input type="hidden" name="firstName" value="Smith" /> 
		<input type="hidden" name="lastName" value="king" />
		<input type="submit"value="������" />
	</form>


</body>
</html>