<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html><html>
<head>
    <meta charset="UTF-8">
    <title>Student Result</title><style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4f8;
        text-align: center;
        padding: 40px;
    }

    .result-box {
        background: white;
        width: 350px;
        margin: auto;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 0 10px #ccc;
    }

    h2 {
        color: #2563eb;
    }

    p {
        font-size: 18px;
    }

    a {
        display: inline-block;
        margin-top: 15px;
        padding: 10px 15px;
        background: #2563eb;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
</style>

</head><body><div class="result-box">

    <h2>Student Result</h2>

    <%
        String name = String.valueOf(request.getAttribute("studentName"));

        name = name.replace("&", "&amp;")
                   .replace("<", "&lt;")
                   .replace(">", "&gt;")
                   .replace("\"", "&quot;")
                   .replace("'", "&#39;");
    %>

    <p>Student Name: <strong><%= name %></strong></p>

    <p>Total Marks:
        <strong><%= request.getAttribute("total") %> / 300</strong>
    </p>

    <p>Average Marks:
        <strong><%= String.format("%.2f",
            ((Number) request.getAttribute("average")).doubleValue()) %></strong>
    </p>

    <p>Final Grade:
        <strong><%= request.getAttribute("grade") %></strong>
    </p>

    <a href="index.html">Calculate Another Result</a>

</div>

</body>
</html>