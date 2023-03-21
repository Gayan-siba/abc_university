<%-- 
    Document   : register
    Created on : 23 Feb, 2023, 10:52:10 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <h1>Student Register Form</h1>
        <br>
        <div class="container">
            <div class="row">
                <form method="POST" action="RegisterController">
                    <div class="form-group">
                        
                        <label>First Name</label>
                        <input type="text" name="fname" placeholder="First Name" class="form-control" required>
                    </div>
                    <div class="form-group">
                        
                        <label>Last Name</label>
                        <input type="text" name="lname" placeholder="Last Name" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        
                        <label>User Name</label>
                        <input type="text" name="uname" placeholder="User Name" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="pwd" placeholder="password" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        
                        <label>Address</label>
                        <input type="text" name="address" placeholder="Address" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <input type="submit" value="submit" class="btn btn-success">
                        <input type="button" value="Login" name="CreateCourse" class="btn btn-info"
                            onclick="window.location='login.jsp'" />
                    </div>
            
        </form>
                
            </div>
        </div>
</html>
