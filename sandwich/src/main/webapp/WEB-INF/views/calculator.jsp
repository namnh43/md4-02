<%--
  Created by IntelliJ IDEA.
  User: namnh
  Date: 6/1/2023
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<form action="/calculator" method="post">
    <input name="x1" value="${x1}">
    <input name="x2" value="${x2}">
    <input name="action" type="hidden" id="action">
    <button type="submit" onclick="setAction('add')">Addition(+)</button>
    <button type="submit" onclick="setAction('sub')">Subtraction(-)</button>
    <button type="submit" onclick="setAction('mul')">Multiplication(X)</button>
    <button type="submit" onclick="setAction('div')">Division(/)</button>
</form>
<p>${result}</p>
</body>
<script>
    function setAction(value) {
        document.getElementById("action").value = value;
    }
</script>
</html>
