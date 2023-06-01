<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Sandwich Condiments</h1>
<c:if test="${msg != null}">
    <p>hello<c:out value="${msg}"/></p>
</c:if>
<form action="save" method="post">
    <div class="form-check">
        <input class="form-check-input" type="checkbox" name="condiments" value="Lettuce" id="lettuce">
        <label class="form-check-label" for="lettuce">
            Lettuce
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" name="condiments" value="Tomato" id="tomato">
        <label class="form-check-label" for="tomato">
            Tomato
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" name="condiments" value="Mustard" id="mustard">
        <label class="form-check-label" for="mustard">
            Mustard
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" name="condiments" value="Sprout" id="sprout">
        <label class="form-check-label" for="sprout">
            Sprout
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>