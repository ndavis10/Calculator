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
        <link href="css/materialize.min.css" rel="stylesheet" type="text/css"/>
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
            <div class="row">
                <form id="rectForm" method="POST" action="calc3?action=rect">
                    <h4 class="col m4">Rectangle</h4>
                    <div class="input-field col m4">
                        <label for="width">Width</label>
                        <input type="number" name="width" id="width" required="required" />
                    </div>
                    <div class="input-field col m4">
                        <label for="height">Height</label>
                        <input type="number" name="height" id="height" required="required" />
                    </div>
                    <button class="btn right waves-effect" type="submit">Calculate</button>
                </form>
            </div>
            <div class="row">
                <form id="circForm" method="POST" action="calc3?action=circ">
                    <h4 class="col m4">Circle</h4>
                    <div class="input-field offset-m4 col m4">
                        <label for="width">Radius</label>
                        <input type="number" name="width" id="width" required="required" />
                    </div>
                    <button class="btn right waves-effect" type="submit">Calculate</button>
                </form>
            </div>
            <div class="row">
                <form id="triForm" method="POST" action="calc3?action=tri">
                    <h4 class="col m4">Triangle</h4>
                    <div class="input-field col m4">
                        <label for="width">Width</label>
                        <input type="number" name="width" id="width" required="required" />
                    </div>
                    <div class="input-field col m4">
                        <label for="height">Height</label>
                        <input type="number" name="height" id="height" required="required" />
                    </div>
                    <button class="btn right waves-effect" type="submit">Calculate</button>
                </form>
            </div>
                <p id="output" style="<% if(show) out.print("visibility: hidden;"); %>">Calculated value: <% out.print(printResult); %></p>
            </div>
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
            <script type="text/javascript" src="js/materialize.min.js"></script>
            <script type="text/javascript" src="js/custom.js"></script>
        </div>
    </body>
</html>
