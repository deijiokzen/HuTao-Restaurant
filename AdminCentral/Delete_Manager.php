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

        <h1>Delete Manager</h1>
    </div>
    <form action="Delete_Manager.php" method="post">
        <?php include('errors.php') ?>
        <div class="inputs">
            <label">Manager_ID</label>
                <input type="text" name="MngrID">
        </div>
        <div class="inputs">
            <button class="btn" name="DelManager">Delete Manager</button>
        </div>
    </form>

</body>

</html>