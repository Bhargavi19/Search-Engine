<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Results</title>
</head>
<body>
<%@page import = "java.io.File"%>
<H4> Your Results are : </H4>
<%

File folder = new File("/home/bhargavi/workspace/SearchEngine/WebContent/htmlFiles");
//File folder = new File("./htmlFiles/");
File[] listOfFiles = folder.listFiles();
String uname = request.getParameter("Keyword");
int count = 0;
for (int i = 0; i < listOfFiles.length; i++) {
	String s = listOfFiles[i].getName();
	if (listOfFiles[i].isFile()) {	
		if(s.toLowerCase().contains(uname.toLowerCase())){
			count++;
%>
<%=count%>. 
<a href= "http://localhost:8080/SearchEngine/htmlFiles/<%= s %>"><%=s%></a><br/>
<% }
		}
	} 
if(count == 0){
	%>
	<h5> Sorry, couldn't find what you are looking for! </h5>
	<%
}
	%>	
	<h6> Wanna search something else?  <form action="searchbar.jsp" method="get">		
		<input type="submit" value="BACK">
	</form></h6>

</body>
</html>