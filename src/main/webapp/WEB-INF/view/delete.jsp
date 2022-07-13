<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete customer</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/home">Back to Product list</a>
</p>

<form action="delete" method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr><td><input value="${product.id}" readonly name="id"></td></tr>
            <tr><td><input value="${product.name}" readonly  name="name"></td></tr>
            <tr><td><input value="${product.price}" readonly name="price"></td></tr>
            <tr><td><img src="${product.img}" width="300" height="250"></td></tr>
                <td></td>
                <td><input type="submit" value="Delete customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>



