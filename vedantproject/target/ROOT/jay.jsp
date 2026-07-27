<%@ page import="java.sql.*"%>
<%
   String use=request.getParameter("name");
   String mail=request.getParameter("email");
   String sub=request.getParameter("subject");
   String mes=request.getParameter("message");
 
  try
	{
	  Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",
			"vedant");
		System.out.println("Connection is created");
		String sql="INSERT INTO contact VALUES(?,?,?,?)";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1,use);
		pst.setString(2,mail);
		pst.setString(3,sub);
		pst.setString(4,mes);
		int i=pst.executeUpdate();
		if(i==1)
			{
			response.sendRedirect("Contact.jsp");
		  	out.println("record is save ");
			}
		  else
		{
			out.println("Record does not save");
		}
	}
	catch(Exception e1)
	{
		out.println("Error="+e1);
	}
%>