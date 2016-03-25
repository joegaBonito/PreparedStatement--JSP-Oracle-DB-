<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%!
		Connection connection;
		PreparedStatement preparedStatement;
		ResultSet resultSet;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1522:xe";
		String uid = "scott";
		String upw = "tiger";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		try {
			Class.forName(driver);
			connection=DriverManager.getConnection(url,uid,upw);
			int n;
			String query = "insert into memberforpre(id,pw,name,phone) values (?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1,"abc");
			preparedStatement.setString(2,"123");
			preparedStatement.setString(3,"Joe");
			preparedStatement.setString(4,"010-1234-5678");
			n = preparedStatement.executeUpdate();
			
			preparedStatement.setString(1,"def");
			preparedStatement.setString(2,"456");
			preparedStatement.setString(3,"John");
			preparedStatement.setString(4,"010-0123-4567");
			n = preparedStatement.executeUpdate();
			
			preparedStatement.setString(1,"ghi");
			preparedStatement.setString(2,"789");
			preparedStatement.setString(3,"James");
			preparedStatement.setString(4,"010-1010-1010");
			n = preparedStatement.executeUpdate();
			
			preparedStatement.setString(1,"jkl");
			preparedStatement.setString(2,"135");
			preparedStatement.setString(3,"Jeanie");
			preparedStatement.setString(4,"111-200-1234");
			n = preparedStatement.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	<br />
	<a href="memberDataView.jsp">Member Info</a>
</body>
</html>