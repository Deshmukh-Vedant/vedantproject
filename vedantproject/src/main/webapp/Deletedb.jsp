<%@ page import="java.sql.*" %>
<%
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useSSL=False","root","vedant");
		System.out.println("Connection is created");
		String user=request.getParameter("name");
		String sql="delete from web where name="+user;
		Statement st=con.createStatement();
		int i=st.executeUpdate(sql);
		out.println(i);
		if(i==1)
		{
			response.sendRedirect("Home.jsp");
		}
		else
		{
			out.println("Record does not deleted");
		}
		con.close();

	}
	catch(Exception e1)
	{
		System.out.println("Error="+e1);
	}
%>