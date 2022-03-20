<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <link rel="stylesheet" href="stylesheet1.css">
    <title>Document</title>
</head>

<body>
<a href="http://localhost/DBProject/AdminMain.php">Back</a>
    <h1 class="header">Delivery Boys</h1>
    <center>
        <table>
            <thead>
                <tr>
                    <td>Employee_ID</td>
                    <td>DBoyID</td>
                    <td>First_Name</td>
                    <td>Last_Name</td>
                    <td>Gender</td>
                    <td>Salary</td>
                    <td>City</td>                
                </tr>
            </thead>
            <tbody>
            <?php
                $database = mysqli_connect('localhost:3308', 'root', '', 'db_project');
                $Query = "Select * from Show_Delivery_Boy";
                $result = mysqli_query($database, $Query);
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr><td>" . $row["Employee_ID"] . "</td><td>" . $row["DBoyID"] . "</td><td>" . $row["First_Name"] . "</td><td>" . $row["Last_Name"] . "</td><td>" . $row["Gender"] . "</td><td>" . $row["Salary"] . "</td><td>" . $row["City"];
                    }
                }
                $database->close();
                ?>
            </tbody>
        </table>
    </center>
</body>

</html>