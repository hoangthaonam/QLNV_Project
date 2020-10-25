<%@page import="java.sql.ResultSet"%>
<%@page import="model.Account"%>
<%@page import="model.EmployeeModel"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>MiniProject</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div id="content">
        <div class ="row">
            <nav class="navbar navbar-default container-fluid">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="./">QLNV</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="./Home">Home</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                    
                            
                                <li><a href="./Register\"><span class="glyphicon glyphicon-user"></span>
                                 <%= request.getAttribute("name") %> </a></li>
                                <li><a href="./Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="row">
        <% String p = (String)request.getAttribute("page"); %>
        	<jsp:include page="<%= p%>"/>
        	
        </div>
    </div>
</body>
</html>