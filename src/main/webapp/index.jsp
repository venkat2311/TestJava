<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        .form-block {
            margin: 150px auto 0 auto;
            width: 200px;
        }
        .form-block *{
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form-block">
        <form action="home" method="post" class="form">
            <input type="text" name="text" placeholder="Enter character:" id="textField" class="form-control">
            <button type="submit" class="btn btn-primary">submit</button>
        </form>
        <c:out value="${requestScope.character}"></c:out>
    </div>
</div>
</body>
</html>
