<%@ page import="com.softserve.itacademy.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update existing User</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<form action="/users/update" method="post">
    <%
        User user=(User) request.getAttribute("user");
    %>
    <table>
        <tr>
            <td><label for="id">Id: </label></td>
            <td><input type="text" id="id" name="id" value="<%=user.getId()%>" disabled></td>
        </tr>
        <tr>
            <td>
                <label for="username">User: </label>
            </td>
            <td>
                <input type="text" id="username" name="username" value="<%=user.getUserName()%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="password">Password: </label>
            </td>
            <td>
                <input type="password" id="password" name="password" value="<%=user.getPassword()%>">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="submit" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
