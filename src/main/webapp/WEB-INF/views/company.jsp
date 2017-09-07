<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta name="description" content="Kanban board implemented in Java EE, Hibernate and JPA - Company">
    <meta name="keywords" content="kanban, java, ee, hibernate, jpa, jpql, criteria api, maven, tomcat, postgresql">
    <meta name="author" content="Piotr Pałka">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Company | Kanban</title>
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="icon" href="../../img/post-it.png">
    <script src="../../js/jquery-3.2.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <p class="navbar-text navbar-left">
                <img src="../../img/post-it-mini.png" alt="Notes">
            </p>
            <p class="navbar-text navbar-left">
                Kanban
            </p>
            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="company">Company</a></li>
                <li><a href="profile">Profile</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="logout">Log out</a></li>
            </ul>
        </div>
    </nav>
    <main>
        <div class="row">
            <div class="col-xs-12">
                <h1>Team</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <c:forEach items="${employees}" var="employee">
                    <figure style="display: inline-block;">
                        <img src="../../img/${employee.getAvatar()}" alt="Avatar" style="margin: 10px; width: 150px;">
                        <figcaption>
                            <c:choose>
                                <c:when test="${employee.getName().length() + employee.getName().length() < 20}">
                                    ${employee.getName()} ${employee.getSurname()}
                                </c:when>
                                <c:otherwise>
                                    ${employee.getName().charAt(0)}. ${employee.getSurname()}
                                </c:otherwise>
                            </c:choose>
                        </figcaption>
                    </figure>
                </c:forEach>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <h2 id="doing">Doing:</h2>
                <c:forEach items="${projects}" var="project">
                    ${project.getName()} ${project.getDescription()} <br>
                </c:forEach>
            </div>
        </div>
    </main>
    <footer class="navbar navbar-default navbar-static-top margin-footer">
        <div class="container">
            <p class="navbar-text navbar-center">
                Kanban implemented in Java EE & Hibernate by
                <a href="https://github.com/plkpiotr">plkpiotr</a>.
            </p>
            <p class="navbar-text navbar-left">
                PNG files on the website were made by
                <a href="https://www.flaticon.com/authors/those-icons" title="Those Icons">Those Icons</a> and
                <a href="https://www.flaticon.com/authors/eucalyp" title="Eucalyp">Eucalyp</a> from
                <a href="https://www.flaticon.com/" title="Flaticon">flaticon.com</a> is licensed by
                <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>.
            </p>
        </div>
    </footer>
</body>
</html>