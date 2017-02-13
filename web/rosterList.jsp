<%@ page import="edu.nvcc.csc.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>CSC200 Sign up</title>
</head>
<body>
    <%
        List<Student> roster = (List<Student>) session.getAttribute("theRoster");
    %>

<table border="2">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
    </tr>
    <% for(int i = 0; i < roster.size(); i++) { %>
    <tr>
        <td><% out.print(roster.get(i).getFirstName());%></td>
        <td><% out.print(roster.get(i).getLastName());%></td>
        <td><% out.print(roster.get(i).getEmail());%></td>
    </tr>
    <% } %><br><br><a href="index.jsp">Click to go back to home</a><br>



</body>
</html>
