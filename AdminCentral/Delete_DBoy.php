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
        <h1>Delete Delivery_Boy</h1>
    </div>
    <form action="Delete_DBoy.php" method="post">
        <?php include('errors.php') ?>
        <div class="inputs">
            <label">DBoy_ID</label>
                <input type="text" name="DBID">
        </div>
        <div class="inputs">
            <button class="btn" name="DelDBoy">Delete Delivery_Boy</button>
        </div>
    </form>
</body>

</html>