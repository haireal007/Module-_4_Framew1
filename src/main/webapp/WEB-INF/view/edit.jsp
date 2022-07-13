<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/home">Back to Product list</a>
</p>

<form action="edit" method="post">
    <fieldset>
        <legend>Studen information</legend>
        <table>
            <tr><td><input value="${product.id}" readonly name="id"></td></tr>
            <tr><td><input value="${product.name}"  name="name"></td></tr>
            <tr><td><input value="${product.price}" name="price"></td></tr>
            <tr><td><input value="${product.img}" name="img"></td></tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>



