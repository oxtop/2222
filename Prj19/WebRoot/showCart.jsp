<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="vo.Book"%>
<html>  
  <body>
  <table border="1">
	<tr bgcolor="pink">
	<td>�鱾����</td>
	<td>�鱾�۸�</td>
	<td>����</td>
	<td>ɾ��</td>
	</tr>
   <%
   		HashMap books = (HashMap)session.getAttribute("books");		
		Set set = books.keySet();
		Iterator ite = set.iterator();
		while(ite.hasNext()){
			String bookno = (String)ite.next();
			Book book = (Book)books.get(bookno);
	%>
	<tr bgcolor="yellow">
		<td><%=book.getBookname()%></td>
		<td><%=book.getBookprice()%></td>
		<td><%=book.getBooknumber()%></td>
		<td><a href="/Prj19/servlet/RemoveServlet?bookno=<%=book.getBookno()%>">ɾ��</a></td>
		</tr>
	<%
		}			
   %>
   </table>
   �ֽ��ܶ�:<%=session.getAttribute("money")%><HR>
   <a href="showAllBook.jsp">��������</a>
  </body>
</html>
