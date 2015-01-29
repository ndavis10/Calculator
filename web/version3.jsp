<%-- 
    Document   : version3
    Created on : Jan 26, 2015, 9:27:30 PM
    Author     : viewt_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" src="/css/materialize.min.css">
        <title>Calculator 3</title>
    </head>
    <body>
        <%
            Object result = request.getAttribute("result");
            boolean show = result == null || result.toString().equals("");
            String printResult = result == null ? "" : result.toString();
        %>
        <div class="container">
            <h3>Area Calculator Version 3</h3>
            <form id="rectForm" method="POST" action="calc3?action=rect">
                <div class="input-field">
                    <label for="width">Width</label>
                    <input type="number" name="width" id="width" required="required" <!-- placeholder="Width" --> />
                </div>
                <div class="input-field">
                    <label for="height">Height</label>
                    <input type="number" name="height" id="height" required="required" <!-- placeholder="Height" --> />
                </div>
                <button class="btn waves-effect" type="submit" value="Calculate" />
            </form>
            <form id="circForm" method="POST" action="calc3?action=circ">
                <div class="input-field">
                    <label for="width">Radius</label>
                    <input type="number" name="width" id="width" required="required" <!-- placeholder="Width" --> />
                </div>
                <button class="btn waves-effect" type="submit" value="Calculate" />
            </form>
            <form id="triForm" method="POST" action="calc3?action=tri">
                <div class="input-field">
                <label for="width">Width</label>
                <input type="number" name="width" id="width" required="required" <!-- placeholder="Width" --> />
                <div class="input-field">
                <label for="height">Height</label>
                <input type="number" name="height" id="height" required="required" <!-- placeholder="Height" --> />
                <button class="btn waves-effect" type="submit" value="Calculate" />
            </form>
            <p id="output" style="<% if(show) out.print("visibility: hidden;"); %>">Calculated value: <% out.print(printResult); %></p>
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
            <script type="text/javascript" src="/js/materialize.min.js"></script>
            <script type="text/javascript" src="/js/custom.js"></script>
        </div>
    </body>
</html>
