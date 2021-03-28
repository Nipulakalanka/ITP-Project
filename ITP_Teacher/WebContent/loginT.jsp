<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="LoginServlet" method="get">
					<div class="form-group">
						<input type="text" name="UserId">
					</div>
					<div class="form-group">
						<input type="text" name="Password" class="form-control" placeholder="Password">
					</div>

					<div class="form-group">
						<input type="submit" value="Login"
							class="btn btn-primary py-3 px-5" style="margin-left:125px;">
					</div>
				</form>
</body>
</html>