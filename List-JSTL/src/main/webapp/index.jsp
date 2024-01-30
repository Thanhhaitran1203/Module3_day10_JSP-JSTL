<%@ page import="storage.DB" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User JSTL</title>
    <style>
        table{
            width: 350px;
            margin: auto;
            box-shadow: 5px 5px 5px cornflowerblue;
        }
        td,th{
            border-bottom: 1px solid;
        }
        img{
            width: 30px;
            height: 30px;
        }
    </style>
</head>
<body>
    <%
        request.setAttribute("list",DB.user);
    %>
<div style="width: 100%;">
    <table style="border: 1px solid">
        <tr><th colspan="4">Danh sach khach hang</th></tr>
        <tr>
            <th>Ten</th>
            <th>Tuoi</th>
            <th>Dia chi</th>
            <th>Img</th>
        </tr>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.address}</td>
                <td><img src="${user.image}" alt=""></td>
            </tr>
        </c:forEach>
    </table>
</div>


</body>
</html>