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
    <label for="value">Value:</label>
    <input id="value" name="value" type="number"><br/>
    <label for="gradeSubject">Subjec:</label>
    <select name="gradeSubject" id="gradeSubject">
        <option name="English" value="ENGLISH">English</option>
        <option name="Polish" value="POLISH">Polish</option>
        <option name="IT" value="IT">It</option>
        <option name="Math" value="MATH">Math</option>
    </select><br/>
    <label for="corrected">Corrected </label>
    <input id="corrected" name="corrected" type="checkbox"><br/>
    <input type="submit">

    </form>
    <jsp:include page="/navigator.jsp"/>
</body>
</html>
