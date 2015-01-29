<%-- 
    Document   : version2
    Created on : Jan 26, 2015, 9:12:32 PM
    Author     : viewt_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Calculator</title>
    </head>
    <body>
        <%
            Object result = request.getAttribute("result");
            boolean show = result == null || result.toString().equals("");
            String printResult = result == null ? "" : result.toString();
        %>
        <form id="rectForm" method="POST" action="calc2">
            <label for="width">Width</label>
            <input type="number" name="width" id="width" required="required" placeholder="Width" />
            <label for="height">Height</label>
            <input type="number" name="height" id="height" required="required" placeholder="Height" />
            <input type="submit" value="Calculate" />
            <p id="output" style="<% if(show) out.print("visibility: hidden;"); %>">Calculated value: <% out.print(printResult); %></p>
        </form>
    </body>
</html>
