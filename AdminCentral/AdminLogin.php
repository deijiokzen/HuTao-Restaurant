<?php include('connectivity.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
   <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
    <div class="header">
        <h1>Admin Login</h1>
    </div>  
    <form action="AdminLogin.php" method="post">
        <?php include('errors.php'); ?>
        <div class="inputs">
            <label>Admin_ID</label>
            <input type="text" name="AdminID" id="AdminID">
        </div>    
        <div class="inputs">
            <label>Password</label>
            <input type="password" name="Password">
        </div>
        <div class="inputs">
            <button type="submit" name="LoginAdmin" class="btn">Login</button>
        </div>
        </form>
    </div>
    
</body>
</html>