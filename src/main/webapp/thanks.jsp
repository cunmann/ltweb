<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<h1>Survey Result</h1>
<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<div>
    <p class="no_margin">He/She know about us from:
        <%
            String choice = request.getParameter("contactVia");
            if (choice != null) {
        %>
        <%= choice %>
        <% } else { %>
        No choice selected.
        <% } %></p>
    <p class="no_margin">Do you want to receive notifications about new CDs?: ${requestScope.checkboxValue}</p>
    <p class="no_margin">Contact him/her through:
        <%
            String selectedOption = request.getParameter("country");
        %>
        <%= selectedOption %>
    </p>
    <p class="no_margin">Click on the back button:</p>
</div>
<form action="index.jsp" method ="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value ="Return">
</form>
</body>
</html>
