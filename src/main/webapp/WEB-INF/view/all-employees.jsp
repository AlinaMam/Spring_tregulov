<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="с" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<body>
<h2>All Employees</h2>
<br>
<table>
    <%--Строка таблицы table row--%>
    <tr>
        <%--шапка таблицы table header--%>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <с:forEach var="emp" items="${allEmps}">
        <%--строка таблицы--%>
        <%--ячейка таблицы--%>
        <%--Создаем кнопку update, в которой будет храниться информация об id для работника--%>
        <%--Внутри этого url добавляеться информация об id работника--%>
        <%--внутри foreach создаем линк, по которому будем проходить, когда нажимамем на кнопку update
        и в этот link добавим инфо об ir работника--%>
        <%--Сама ссылка находится в value и будет ссылаться на метод контроллера с requestmapping 'updateInfo'--%>
        <c:url var="updateButton" value="updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url var="deleteButton" value="deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
                <%--td - это ячейка таблицы--%>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
                <%--td это ячейка, table data--%>
            <td>
                    <%--по этой ссылке мы будем переходить по ссылке с value updateInfo--%>
                <input type="button" value="Update" onclick="window.location.href='${updateButton}'">
                <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'">
            </td>

        </tr>
    </с:forEach>
</table>
<br>
<input type="button" value="Add" onclick="window.location.href='addNewEmployee'">
</body>
</html>