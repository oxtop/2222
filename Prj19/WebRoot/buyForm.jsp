<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="vo.Book"%>
<html>  
  <body> 
    <%
		String bookno = request.getParameter("bookno");
    	HashMap allbook = (HashMap)session.getAttribute("allbook");
    	Book book = (Book)allbook.get(bookno);
    %>
    ��ӭ����<%=book.getBookname()%> 
    <form action="/Prj19/servlet/AddServlet" method="post">
		�鱾�۸�:<%=book.getBookprice()%><BR>
		<input name="bookno" type="hidden" value="<%=book.getBookno()%>">
		<input name="bookname" type="hidden" 
value="<%=book.getBookname()%>">
		<input name="bookprice" type="hidden" 
value="<%=book.getBookprice()%>">
		����:
<input name="booknumber" type="text">
		<input type="submit" value="����">
    </form>    
  </body>
</html>
