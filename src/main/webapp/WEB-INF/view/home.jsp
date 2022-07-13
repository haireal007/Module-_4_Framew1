
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Home</title>
</head>
<body>
<button><a href="/create">Create Product</a></button>
<table border="10">
    <c:forEach var="p" items="${product}">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td><img src="${p.img}" width="300" height="250"></td>
            <td><button><a href="/edit?id=${p.id}">Edit</a></button></td>
            <td><button><a href="/delete?id=${p.id}">Delete</a></button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
