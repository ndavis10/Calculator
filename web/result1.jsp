<%-- 
    Document   : result1
    Created on : Jan 26, 2015, 9:04:54 PM
    Author     : viewt_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% final String ERROR_MSG = "Unable to retrive message!"; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Result</title>
    </head>
    <body>
        <%
            Object area = request.getAttribute("result");
            String outResult = area == null ? ERROR_MSG : area.toString();
        %>
        <h1>Result</h1>
        <p>Calculated value: <% out.println(outResult); %></p>
    </body>
</html>
