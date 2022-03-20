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
        <h1>Delete Chef</h1>
    </div>
    <form action="Delete_Chef.php" method="post">
        <?php include('errors.php') ?>
        <div class="inputs">
            <label">Chef_ID</label>
                <input type="text" name="ChefID">
        </div>
        <div class="inputs">
            <button class="btn" name="DelChef">Delete Chef</button>
        </div>
    </form>

</body>

</html>