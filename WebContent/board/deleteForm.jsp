<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="board.BoardDataBean" %>
<%@ page import="board.BoardDBBean" %>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	String nowpage = request.getParameter("page");
%>

<html>
<head>
	<title>게시판</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
	<script src="check.js"></script>
</head>   

<body>  
<center><b>글삭제</b>
<br>
<form method="post" name="writeform" action="deletePro.jsp">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="page" value="<%=nowpage%>">

<table width="430" border="1" cellspacing="0" cellpadding="0" align="center">
   <tr>
    <td align="right" colspan="2">
	    <a href="list.jsp"> 글목록</a> 
    </td>
   </tr>   
   <tr>
    <td  width="100"  align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" id="passwd" name="passwd"> 
	 </td>
  </tr>
<tr>      
 <td colspan=2 align="center"> 
  <input type="submit" value="글삭제" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="window.location='list.jsp'">
</td></tr></table>    
   
</form>      
</body>
</html>
