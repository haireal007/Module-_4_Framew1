
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Create new customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/home">Back to Product list</a>
</p>

<form action="create" method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
        <tr>
            <td>Id:</td>
            <td><input type="text" name="id" value="${product.size()+1}"></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td>Img:</td>
            <td><input type="text" name="img"></td>
        </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>

