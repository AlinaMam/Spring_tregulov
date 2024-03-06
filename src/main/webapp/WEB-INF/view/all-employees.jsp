<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<body>
<h2>All Employees</h2>
<br>
<table>
<%--Строка таблицы--%>
    <tr>
<%--шапка таблицы table header--%>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>
    <с:forEach var="emp" items="${allEmps}">
        <%--строка таблицы--%>
        <%--ячейка таблицы--%>
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
        </tr>
    </с:forEach>
</table>
</body>
</html>