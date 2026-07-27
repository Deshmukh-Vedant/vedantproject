<%@ page import="java.sql.*"%>
<%
   String name=request.getParameter("username");
   String pass=request.getParameter("pass");
   String age=request.getParameter("age");
   String city=request.getParameter("city");
   String email=request.getParameter("email");
   String occasion=request.getParameter("occasion");
   String course=request.getParameter("course");
   String fees=request.getParameter("fees");

   try{
   	Class.forName("com.mysql.cj.jdbc.Driver");
   	System.out.println("Driver is loaded");
   	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useSSL=false","root","vedant");
   	System.out.println("Connection is created");
   	String sql="insert into bookdb values(?,?,?,?,?,?,?,?)";
   	PreparedStatement pst=con.prepareStatement(sql);
   	pst.setString(1,name);
   	pst.setString(2,pass);
    pst.setString(3,age);
    pst.setString(4,city);
    pst.setString(5,email);
    pst.setString(6,occasion);
    pst.setString(7,course);
    pst.setString(8,fees);
    int i=pst.executeUpdate();
    if(i==1)
    {
    	response.sendRedirect("Books.jsp");
    }
    else{
    	out.println("Record does not save");
    }
    con.close();
   }
   catch(Exception e)
   {
   	System.out.println("Error="+e);
   }
%>