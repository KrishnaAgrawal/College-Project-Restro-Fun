<%
    session.invalidate();

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <script>
            function clear() {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'", 500);
            }
        </script>
    </head>
    <body onload="clear()"></body>
</html>