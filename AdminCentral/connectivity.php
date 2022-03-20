<?php

session_start();

$error = array();
$db = mysqli_connect('localhost:3308', 'root', '', 'db_project');

if (isset($_POST['LoginAdmin'])) {
    $adminid = mysqli_real_escape_string($db, $_POST['AdminID']);
    $adminpass = mysqli_real_escape_string($db, $_POST['Password']);

    if (empty($adminid)) {
        array_push($error, "Admin_ID Missing!");
    }
    if (empty($adminpass)) {
        array_push($error, "AdminPassword Missing!");
    }


    if (count($error) == 0) {
        $query = "SELECT * FROM ADMIN WHERE ADMIN_ID='$adminid' AND ADMIN_PASSWORD='$adminpass'";
        $result = mysqli_query($db, $query);
        if (mysqli_num_rows($result) == 1) {
            $_SESSION['adminid'] = $adminid;
            $_SESSION['success'] = "You are now logged in";
            header('location: AdminMain.php');
        } else {

            array_push($error, "Incorrect Admin_ID/Password");
        }
    }
}

if (isset($_POST['AddManager'])) {

    $MgrID = mysqli_real_escape_string($db, $_POST['Manager_ID']);
    $M_Employee_ID = mysqli_real_escape_string($db, $_POST['M_Employee_ID']);
    $M_First_Name = mysqli_real_escape_string($db, $_POST['M_First_Name']);
    $M_Last_Name = mysqli_real_escape_string($db, $_POST['M_Last_Name']);
    $M_Gender = mysqli_real_escape_string($db, $_POST['M_Gender']);
    $M_Salary = mysqli_real_escape_string($db, $_POST['M_Salary']);
    $M_Salary = (float)$M_Salary;
    $M_City = mysqli_real_escape_string($db, $_POST['M_City']);

    if (empty($MgrID) or empty($M_Employee_ID) or empty($M_First_Name) or empty($M_Last_Name) or empty($M_Gender) or empty($M_Salary) or empty($M_City)) {
        array_push($error, "Fields Unfilled!");
    }
    if (substr($MgrID, 0, 4) != "Mgr_") array_push($error, "Invalid Manager_ID Format!");
    if (substr($M_Employee_ID, 0, 9) != "Employee_") array_push($error, "Invalid Employee_ID Format!");

    $query = "SELECT * FROM EMPLOYEE WHERE EMPLOYEE_ID='$M_Employee_ID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) > 0) array_push($error, "Employee_ID already Exist!");

    $query = "SELECT * FROM Manager WHERE Manager_ID='$MgrID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) > 0) array_push($error, "Manager_ID already Exist!");

    if (count($error) == 0) {
        $query = "INSERT INTO EMPLOYEE VALUES('$M_Employee_ID','$M_First_Name','$M_Last_Name','$M_Gender',$M_Salary,'$M_City')";
        Mysqli_query($db, $query);

        $query = "INSERT INTO Manager VALUES('$MgrID','$M_Employee_ID')";
        Mysqli_query($db, $query);

        header('location: AdminMain.php');
    }
}

if (isset($_POST['AddChef'])) {

    $ChefID = mysqli_real_escape_string($db, $_POST['Chef_ID']);
    $C_Employee_ID = mysqli_real_escape_string($db, $_POST['C_Employee_ID']);
    $C_First_Name = mysqli_real_escape_string($db, $_POST['C_First_Name']);
    $C_Last_Name = mysqli_real_escape_string($db, $_POST['C_Last_Name']);
    $C_Gender = mysqli_real_escape_string($db, $_POST['C_Gender']);
    $C_Salary = mysqli_real_escape_string($db, $_POST['C_Salary']);
    $C_Salary = (float)$C_Salary;
    $C_City = mysqli_real_escape_string($db, $_POST['C_City']);

    if (empty($ChefID) or empty($C_Employee_ID) or empty($C_First_Name) or empty($C_Last_Name) or empty($C_Gender) or empty($C_Salary) or empty($C_City)) {
        array_push($error, "Fields Unfilled!");
    }
    if (substr($ChefID, 0, 5) != "Chef_") array_push($error, "Invalid Chef_ID Format!");
    if (substr($C_Employee_ID, 0, 9) != "Employee_") array_push($error, "Invalid Employee_ID Format!");

    $query = "SELECT * FROM EMPLOYEE WHERE EMPLOYEE_ID='$C_Employee_ID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) > 0) array_push($error, "Employee_ID already Exist!");

    $query = "SELECT * FROM Chef WHERE Chef_ID='$ChefID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) > 0) array_push($error, "Chef_ID already Exist!");

    if (count($error) == 0) {
        $query = "INSERT INTO EMPLOYEE VALUES('$C_Employee_ID','$C_First_Name','$C_Last_Name','$C_Gender',$C_Salary,'$C_City')";
        Mysqli_query($db, $query);

        $query = "INSERT INTO Chef VALUES('$ChefID','$C_Employee_ID')";
        Mysqli_query($db, $query);

        header('location: AdminMain.php');
    }
}

if (isset($_POST['AddDBoy'])) {

    $DBoyID = mysqli_real_escape_string($db, $_POST['DBoy_ID']);
    $D_Employee_ID = mysqli_real_escape_string($db, $_POST['D_Employee_ID']);
    $D_First_Name = mysqli_real_escape_string($db, $_POST['D_First_Name']);
    $D_Last_Name = mysqli_real_escape_string($db, $_POST['D_Last_Name']);
    $D_Gender = mysqli_real_escape_string($db, $_POST['D_Gender']);
    $D_Salary = mysqli_real_escape_string($db, $_POST['D_Salary']);
    $D_Salary = (float)$D_Salary;
    $D_City = mysqli_real_escape_string($db, $_POST['D_City']);

    if (empty($DBoyID) or empty($D_Employee_ID) or empty($D_First_Name) or empty($D_Last_Name) or empty($D_Gender) or empty($D_Salary) or empty($D_City)) {
        array_push($error, "Fields Unfilled!");
    }
    if (substr($DBoyID, 0, 5) != "DBoy_") array_push($error, "Invalid DBoy_ID Format!");
    if (substr($D_Employee_ID, 0, 9) != "Employee_") array_push($error, "Invalid Employee_ID Format!");

    $query = "SELECT * FROM EMPLOYEE WHERE EMPLOYEE_ID='$D_Employee_ID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) > 0) array_push($error, "Employee_ID already Exist!");

    $query = "SELECT * FROM Delivery_Boy WHERE DBoyID='$DBoyID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) > 0) array_push($error, "DBoy_ID already Exist!");

    if (count($error) == 0) {
        $query = "INSERT INTO EMPLOYEE VALUES('$D_Employee_ID','$D_First_Name','$D_Last_Name','$D_Gender',$D_Salary,'$D_City')";
        Mysqli_query($db, $query);

        $query = "INSERT INTO Delivery_Boy VALUES('$DBoyID','$D_Employee_ID')";
        Mysqli_query($db, $query);

        header('location: AdminMain.php');
    }
}

if (isset($_POST['Add_Manager'])) {
    header('location: AddManager.php');
}

if (isset($_POST['Add_DBoy'])) {
    header('location: AddDBoy.php');
}

if (isset($_POST['Add_Chef'])) {
    header('location: AddChef.php');
}
if (isset($_POST['Delete_Manager'])) {
    header('location: Delete_Manager.php');
}

if (isset($_POST['DelManager'])) {
    $MngrID = mysqli_real_escape_string($db, $_POST['MngrID']);
    if (empty($MngrID)) array_push($error, "Field Empty!");
    $query = "SELECT * FROM MANAGER WHERE MANAGER_ID='$MngrID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) == 0) array_push($error, "Manager Do Not Exist!");
    else {
        $manager = mysqli_fetch_assoc($result);
        $employeeid = $manager["Employee_ID"];
    }
    if (count($error) == 0) {
        $query = "DELETE FROM MANAGER WHERE MANAGER_ID='$MngrID'";
        if (mysqli_query($db, $query)) {
            $query = "DELETE FROM EMPLOYEE WHERE EMPLOYEE_ID='$employeeid'";
            if (mysqli_query($db, $query)) {
                header('location: AdminMain.php');
            }
        }
    }
}

if (isset($_POST['DelDBoy'])) {
    $DBoyID = mysqli_real_escape_string($db, $_POST['DBID']);
    if (empty($DBoyID)) array_push($error, "Field Empty!");
    $query = "SELECT * FROM Delivery_Boy WHERE DBoyID='$DBoyID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) == 0) array_push($error, "DBoy Do Not Exist!");
    else {
        $DBoy = mysqli_fetch_assoc($result);
        $employeeid = $DBoy["Employee_ID"];
    }
    if (count($error) == 0) {
        $query = "DELETE FROM Delivery_Boy WHERE DBoyID='$DBoyID'";
        if (mysqli_query($db, $query)) {
            $query = "DELETE FROM EMPLOYEE WHERE EMPLOYEE_ID='$employeeid'";
            if (mysqli_query($db, $query)) {
                header('location: AdminMain.php');
            }
        }
    }
}
if (isset($_POST['Delete_DBoy'])) {
    header('location: Delete_DBoy.php');
}
if (isset($_POST['Delete_Chef'])) {
    header('location: Delete_Chef.php');
}
if (isset($_POST['Update_DBoy_Salary'])) {
    header('location: Update_DBoy.php');
}
if (isset($_POST['Update_Chef_Salary'])) {
    header('location: Update_Chef.php');
}
if (isset($_POST['Update_Manager_Salary'])) {
    header('location: Update_Manager.php');
}

if (isset($_POST['Show_Manager']))
{
    header('location: DisplayManager.php');
}

if(isset($_POST['Show_DBoy']))
{
    header('location: DisplayDBoys.php');
}

if(isset($_POST['Show_Chef']))
{
    header('location: DisplayChef.php');
}

if(isset($_POST['Back']))
{
    header('location: AdminMain.php');
}

if (isset($_POST['DelChef'])) {
    $ChefID = mysqli_real_escape_string($db, $_POST['ChefID']);
    if (empty($ChefID)) array_push($error, "Field Empty!");
    $query = "SELECT * FROM Chef WHERE Chef_ID='$ChefID'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) == 0) array_push($error, "Chef Do Not Exist!");
    else {
        $chef = mysqli_fetch_assoc($result);
        $employeeid = $chef["Employee_ID"];
    }
    if (count($error) == 0) {
        $query = "DELETE FROM Chef WHERE Chef_ID='$ChefID'";
        if (mysqli_query($db, $query)) {
            $query = "DELETE FROM EMPLOYEE WHERE EMPLOYEE_ID='$employeeid'";
            if (mysqli_query($db, $query)) {
                header('location: AdminMain.php');
            }
        }
    }
}
if (isset($_POST['UpdateDBoy'])) {
    $DBoyID = mysqli_real_escape_string($db, $_POST['DB_ID']);
    $new_salary = mysqli_real_escape_string($db, $_POST['D_new_salary']);

    if (empty($DBoyID) or empty($new_salary)) array_push($error, "Field(s) Unfilled");

    $query = "SELECT * FROM DELIVERY_BOY WHERE DBoyID='$DBoyID'";
    $result = mysqli_query($db, $query);

    if (mysqli_num_rows($result) == 0) {
        array_push($error, "DBoy Donot Exist");
    } else {
        $DBoy = mysqli_fetch_assoc($result);
        $employeeid = $DBoy["Employee_ID"];
    }

    if (count($error) == 0) {
        $query = "UPDATE EMPLOYEE SET SALARY=$new_salary WHERE EMPLOYEE_ID='$employeeid'";
        if (mysqli_query($db, $query)) {
            header('location: AdminMain.php');
        }
    }
}
if (isset($_POST['UpdateChef'])) {
    $ChefID = mysqli_real_escape_string($db, $_POST['C_ID']);
    $new_salary = mysqli_real_escape_string($db, $_POST['C_new_salary']);

    if (empty($ChefID) or empty($new_salary)) array_push($error, "Field(s) Unfilled");

    $query = "SELECT * FROM Chef WHERE Chef_ID='$ChefID'";
    $result = mysqli_query($db, $query);

    if (mysqli_num_rows($result) == 0) {
        array_push($error, "Chef Donot Exist");
    } else {
        $Chef = mysqli_fetch_assoc($result);
        $employeeid = $Chef["Employee_ID"];
    }
    if (count($error) == 0) {
        $query = "UPDATE EMPLOYEE SET SALARY=$new_salary WHERE EMPLOYEE_ID='$employeeid'";
        if (mysqli_query($db, $query)) {
            header('location: AdminMain.php');
        }
    }
}
if (isset($_POST['UpdateManager'])) {
    $MngrID = mysqli_real_escape_string($db, $_POST['M_ID']);
    $new_salary = mysqli_real_escape_string($db, $_POST['M_new_salary']);

    if (empty($MngrID) or empty($new_salary)) array_push($error, "Field(s) Unfilled");

    $query = "SELECT * FROM Manager WHERE Manager_ID='$MngrID'";
    $result = mysqli_query($db, $query);

    if (mysqli_num_rows($result) == 0) {
        array_push($error, "Manager Donot Exist");
    } else {
        $Mngr = mysqli_fetch_assoc($result);
        $employeeid = $Mngr['Employee_ID'];
    }
    if (count($error) == 0) {
        $query = "UPDATE EMPLOYEE SET SALARY=$new_salary WHERE EMPLOYEE_ID='$employeeid'";
        if (mysqli_query($db, $query)) {
            header('location: AdminMain.php');
        }
    }
}
