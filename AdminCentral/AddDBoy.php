<?php include('connectivity.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
    <div class="header">
        <h1>Adding New Delivery_Boy</h1>
    </div>
    <form action="AddDBoy.php" method="post">
        <?php include('errors.php') ?>
        <div class="inputs">
            <label">Employee_ID (Format: Employee_XXXX)</label>
            <input type="text" name="D_Employee_ID">
        </div>
        <div class="inputs">
            <label">DBoy_ID (Format: DBoy_XXXX)</label>
            <input type="text" name="DBoy_ID">
        </div>
        <div class="inputs">
            <label">First_Name</label>
            <input type="text" name="D_First_Name">
        </div>
        <div class="inputs">
            <label">Last_Name</label>
            <input type="text" name="D_Last_Name">
        </div>
        <div class="inputs">
            <label">Gender</label>
            <select name="D_Gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="inputs">
            <label">Salary</label>
            <input type="text" name="D_Salary">
        </div>
        <div class="inputs">
            <label">City</label>
            <input type="text" name="D_City">
        </div>
        <div class="inputs">
            <button type="submit" name="AddDBoy" class="btn" class="register">Add_Delivery_Boy</button>
        </div>
    </form>
</body>
</html>