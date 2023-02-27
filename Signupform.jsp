<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signup</title>
</head>
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

<body>

    <div class="center">

        
        <h1 >SIGNUP</h1>
        <h2 >Create a new account</h2>
        
        <form  method="post" action="Signupform">
        <input type="text" placeholder="New Username name" name="n1"><br><br>
        <input type="email" placeholder="New email"  name="n2"><br><br>
        <input type="password" placeholder="New Password"  name="n3"><br><br>
         <input type="text" placeholder="Phone No"  name="n4"><br><br>
         <input type="text" placeholder="Address"  name="n5"><br><br>
        <input type="submit" value="Sign Up"><br><br>
        
        </div>
        </form>
        </div>
    
   
</body>
</html>