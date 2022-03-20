<?php include('connectivity.php')?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_Main_Page</title>
    <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
    <a href="http://localhost/DBProject/AdminLogin.php">Logout</a>
    <div class="header">Admin Main Page</div>
    <form action="AdminMain.php" method="post">
        <div class="inputs">
            <button class="btn" name="Add_Manager">Add Mngr</button>
            <button class="btn" name="Delete_Manager">Delete Mngr</button>
            <button class="btn" name="Update_Manager_Salary">Update_Mngr_Sal:</button>
        </div>
        <div class="inputs">
            <button class="btn" name="Add_DBoy">Add DBoy</button>
            <button class="btn" name="Delete_DBoy">Delete DBoy</button>
            <button class="btn" name="Update_DBoy_Salary">Update_DBoy_Sal:</button>
        </div>
        <div class="inputs">
            <button class="btn" name="Add_Chef">Add Chef</button>
            <button class="btn" name="Delete_Chef">Delete Chef</button>
            <button class="btn" name="Update_Chef_Salary">Update_DBoy_Salary</button>
        </div>
        <div class="inputs">
            <button class="btn" name="Show_Manager">Display Manager</button>
            <button class="btn" name="Show_DBoy">Display DBoy</button>
            <button class="btn" name="Show_Chef">Display Chef</button>
        </div>
    </form>
</body>
</html>