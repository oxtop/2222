<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="vo.Book"%>
<html>  
  <body>
  	��ӭѡ��ͼ��<br>
    <%    	
    	HashMap allbook = (HashMap)session.getAttribute("allbook");
    %>
    <table border="1">
	<tr bgcolor="pink">
	<td>�鱾����</td>
	<td>�鱾�۸�</td>
	<td>����</td>
	</tr>
	<%
		Set set = allbook.keySet();
		Iterator ite = set.iterator();
		while(ite.hasNext()){
			String bookno = (String)ite.next();
			Book book = (Book)allbook.get(bookno);
	%>
		<tr bgcolor="yellow">
		<td><%=book.getBookname()%></td>
		<td><%=book.getBookprice()%></td>
		<td><a href="buyForm.jsp?bookno=<%=bookno%>">����</a></td>
		</tr>	
	<%} %>	
	</table>
	<a href="showCart.jsp">�鿴���ﳵ</a>	
  </body>
</html>
