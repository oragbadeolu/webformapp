<%@ page import="java.sql.*"%>
<%
String first_name=request.getParameter("firstName");
String last_name=request.getParameter("lastName");
String email_address=request.getParameter("email");
String gender=request.getParameter("gender");
String password=request.getParameter("password");
String number=request.getParameter("number");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://optimizerx-db-instance-1.cfmgiygzpr4p.us-east-1.rds.amazonaws.com:3306/mysql_form_data", "admin", "optimzerxproject");
	Statement st=conn.createStatement();
	st.executeUpdate("insert into formdb (firstName,lastName,gender,email,password,number) VALUES ('"+first_name+"','"+last_name+"', '"+gender+"','"+email_address+"','"+password+"','"+number+"')");
	response.sendRedirect("save.html");

}
catch(Exception e)
{
	response.sendRedirect("error.html");
	e.printStackTrace();
	}
%>