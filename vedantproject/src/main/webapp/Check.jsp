<%@ page import="java.sql.*"%>
<%

	String user=request.getParameter("name");
	String pass=request.getParameter("pass");

	try
	
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useSSL=false","root","vedant");
		System.out.println("Connection is created");
		Statement st=con.createStatement();
		String sql="select name,password from web where name='"+user+"' and password='"+pass+"'";
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
		{
			response.sendRedirect("Success.jsp");
		}
		else
		{
			response.sendRedirect("Home.jsp");	
		}
		con.close();

	}
catch(Exception e1)
{
System.out.println("Error="+e1);
}

%>