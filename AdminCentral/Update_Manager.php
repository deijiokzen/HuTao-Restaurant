<?php include('connectivity.php') ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Manager</title>
    <link rel="stylesheet" href="stylesheet.css">
</head>

<body>
    <div class="header">
        <h1>Update Manager Salary</h1>
    </div>
    <form action="Update_Manager.php" method="post">
        <?php include('errors.php') ?>
        <div class="inputs">
            <label">Manager_ID</label>
                <input type="text" name="M_ID">
        </div>
        <div class="inputs">
            <label">New Salary</label>
            <input type="text" name="M_new_salary">
        </div>
        <div class="inputs">
            <button class="btn" name="UpdateManager">Update Manager</button>
        </div>
    </form>
</body>

</html>