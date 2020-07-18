<%--
  Created by IntelliJ IDEA.
  User: Pichael
  Date: 7/18/2020
  Time: 3:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grde form</title>
</head>
<body>
<form action="gradeSubmitHandler.jsp" method="post">
    <label for="id">Id:</label>
    <input id="id" name="id" type="number"><br/>
    <label for="value">Vlue:</label>
    <input id="value" name="value" type="number"><br/>
    <label for="corrected">Corrected </label>
    <input id="corrected" name="corrected" type="checkbox"><br/>
    <input type="submit">

    <jsp:include page="/navigator.jsp"/>
</form>
</body>
</html>
