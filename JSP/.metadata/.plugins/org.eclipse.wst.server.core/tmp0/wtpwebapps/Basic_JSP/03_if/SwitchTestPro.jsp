<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%	String number = request.getParameter("number");

	String local="";
	
	switch(number){
	case "0" : local = "����, �߱�, ���";
	break;
	case "1" : local = "����, ����, ���";
	break;
	case "2" : local = "���빮, ����, �߷�, ����";
	break;
	case "3" : local = "����, ����";
	break;
	case "4" : local = "����, ����";
	break;
	case "5" : local = "����, ����, ��õ";
	break;
	case "6" : local = "����, ��õ, ������, ����";
	break;
	case "7" : local = "����, ������, ���빮";
	break;
	default : local = "���� ����";
	}
	out.print("�����Ͻ� ������ "+local+" �Դϴ�.");
	%>
</body>
</html>