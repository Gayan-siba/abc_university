
<%-- 
    Document   : login
    Created on : 23 Feb, 2023, 9:51:05 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Login to Student Management Console</h1>
    <br>
       <%  
         String message = (String) request.getAttribute("Message");
         if(message != null){
       %>
       <h3><%=message %></h3>
       <%
         }
         %>
      
        <div class="container">
            <div class="row">
                <form method="POST" action="loginController">
                    <div class="form-group">
                        
                        <label>User Name</label>
                        <input type="text" name="uname" placeholder="username" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="pwd" placeholder="password" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="submit" value="submit" class="btn btn-success">
                        <input type="button" value="Register" name="CreateCourse" class="btn btn-info"
                            onclick="window.location='register.jsp'" />
                    </div>
            
        </form>
                
            </div>
        </div>
        
    </body>
</html>
