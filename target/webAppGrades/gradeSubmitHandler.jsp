<%@ page import="java.util.List" %>
<%@ page import="com.sda.JavaGda34.wevAppGrades.Grade" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sda.JavaGda34.wevAppGrades.GradeSubject" %>
<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: Pichael
  Date: 7/18/2020
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grades submit handler</title>
</head>
<body>
<%

    String value = request.getParameter("value");
    String id = request.getParameter("id");
    String subject = request.getParameter("gradeSubject");
    String corrected = request.getParameter("corrected");
    Grade grade = Grade.builder()
            .id(Long.parseLong(id))
            .value(Double.parseDouble(value))
            .przedmiot(GradeSubject.valueOf(subject))
            .corrected(corrected != null && corrected.equalsIgnoreCase("on"))
            .dateAdded(LocalDateTime.now())
            .build();

    Object gradeListResult =  session.getAttribute("gradeList");
    List<Grade> gradeList;
    if (gradeListResult instanceof List) {
        gradeList = (List<Grade>) gradeListResult;
    } else {
        gradeList = new ArrayList<>();
    }
    gradeList.add(grade);
    session.setAttribute("gradeList", gradeList);
    response.sendRedirect("/gradeList.jsp");

%>
</body>
</html>
