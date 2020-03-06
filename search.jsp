<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
         Properties properties = new Properties();
         properties.setProperty("user", "root");
         properties.setProperty("password", "root");
         properties.setProperty("useSSL", "false");
         properties.setProperty("autoReconnect", "true");
         String connectionURL = "jdbc:mysql://localhost:3306/doctor";

//String driver = "com.mysql.jdbc.Driver";
//String connectionUrl = "jdbc:mysql://localhost:3306/";
//String database = "doctor";
//String userid = "root";
//String password = "root";
//String country=request.getParameter("country");
//String specialization=request.getParameter("specialization");
//String insurance=request.getParameter("insurance");
//try {
//Class.forName("com.mysql.cj.jdbc.Driver");
// Connection connection = DriverManager.getConnection(connectionURL,properties);
//
//} catch (ClassNotFoundException e) {
//e.printStackTrace();
//}
//Connection connection = null;
//Statement statement = null;
//ResultSet resultSet = null;
//%>
<!DOCTYPE html>
<html>
<body>
<h1>Search Data</h1>
<table border="1">
<tr>
<td>First_Name</td>
<td>Last_Name</td>
<td>Email Id</td>
<td>Country</td>
</tr>
<%
try{
String country=request.getParameter("country");
String specialization=request.getParameter("specialization");
String insurance=request.getParameter("insurance");
//System.out.println("Country name" +country);
//System.out.println("specialiization" +specialization);
//System.out.println("Insurance"+insurance);
//      System.out.println("At starting of connectrion");  
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection connection = DriverManager.getConnection(connectionURL,properties);
 System.out.print("Connection succesful");


//connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement statement=connection.createStatement();
String sql ="select * from doctor_register where country='"+country+"' AND specialization='"+specialization+"' AND insurance='"+insurance+"' OR country='"+country+"' AND specialization='"+specialization+"'OR country='"+country+"' AND insurance='"+insurance+"' OR  specialization='"+specialization+"' AND insurance='"+insurance+"' OR  country='"+country+"' OR  specialization='"+specialization+"' OR  insurance='"+insurance+"' ";
ResultSet resultSet = statement.executeQuery(sql);

//System.out.println("Result Set"+resultSet+"Result set boolean"+resultSet.next());
while(resultSet.next()){
//    System.out.println(resultSet.getString("fname"));
%>
<tr>
    
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("country") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
out.println("Exception in connection "+e.getMessage());}
%>
</table>
</body>
</html>