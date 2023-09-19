<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<h1>Survey</h1>
<p>
    If you have a moment, we'd appreciate it if would fill out this survey
</p>
<h2>Your information</h2>
<form action="survey" method="post">
    <input type="hidden" name="action" value="add" />

    <label>First Name:</label>
    <input type="text" name="firstName" required /><br />

    <label>Last Name:</label>
    <input type="text" name="lastName" required /><br />

    <label>Email:</label>
    <input type="email" name="email" required /><br />
    <h2>How did you hear about us?</h2>
    <p>
        <input type="radio" name="contactVia" value="Search engine" />Search
        engine
        <input type="radio" name="contactVia" value="Word of mouth" />Word of
        mouth <input type="radio" name="contactVia" value="Other" />Other
    </p>
    <br />
    <h2>
        Would you like to receive announcements about new CDs and special
        offers?
    </h2>
    <p>
        <input type="checkbox" name="checkboxlike" />YES, i'd like that<br />
    </p>
    Please contact me by:
    <select name="country">
        <option value="Mail or postal mail" selected>Email or postal mail</option>
        <option value="Other">Other</option></select
    ><br />
    <label>&nbsp;</label><br />
    <input type="submit" value="Submit" id="submit" />
</form>
</body>
</html>
