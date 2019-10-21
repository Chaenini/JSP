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
	case "0" : local = "종로, 중구, 용산";
	break;
	case "1" : local = "도봉, 강북, 노원";
	break;
	case "2" : local = "동대문, 성동, 중량, 광진";
	break;
	case "3" : local = "강동, 송파";
	break;
	case "4" : local = "서초, 강남";
	break;
	case "5" : local = "동작, 관악, 금천";
	break;
	case "6" : local = "간서, 양천, 영등포, 구로";
	break;
	case "7" : local = "은평, 마초포, 서대문";
	break;
	default : local = "없는 구역";
	}
	out.print("선택하신 지역은 "+local+" 입니다.");
	%>
</body>
</html>