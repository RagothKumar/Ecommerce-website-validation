<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
<style>
body
{
    background: linear-gradient(#e66465, #9198e5);
    height: 100vh;
    display: flex;
    justify-content: center;
    
}

.center
{
margin-top: 10%;
}
</style>

</head>

<body>

<div class="center">
<div class="text">
<h1>LOGIN</h1>
<form  method="post" action="Login" >
<input type="text" placeholder="Email" name="nn1"><br><br>
<input type="password" placeholder="Password" name="nn2"><br><br>
<div class="text1">
<a href="#">Forget password</a><br><br>
<input type="submit" value="Log in" ><br><br>
<p>Not have a account?<a href="Signupform.jsp" >Sign Up </a></p>
</div>
</div>
</form>


</div>
    
</body>
</html>