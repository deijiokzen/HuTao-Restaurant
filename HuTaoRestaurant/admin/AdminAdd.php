<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Admin</h1>

        <br><br>

        <?php 
            if(isset($_SESSION['adminsuccessfailure']))
            {
                echo $_SESSION['adminsuccessfailure']; 
                unset($_SESSION['adminsuccessfailure']); 
            }
        ?>

        <form action="" method="POST">

            <table class="tbl-30">
                <tr>
                    <td>Full Name: </td>
                    <td>
                        <input type="text" name="name_full" placeholder="Enter Your Name">
                    </td>
                </tr>

                <tr>
                    <td>Username: </td>
                    <td>
                        <input type="text" name="user_name" placeholder="Your Username">
                    </td>
                </tr>

                <tr>
                    <td>Password: </td>
                    <td>
                        <input type="password" name="password" placeholder="Your Password">
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" name="submitval" value="Add Admin" class="buttn-secondary">
                    </td>
                </tr>

            </table>

        </form>


    </div>
</div>

<?php include('partials/footer.php'); ?>


<?php 

    if(isset($_POST['submitval']))
    {
        $name_full = $_POST['name_full'];
        $user_name = $_POST['user_name'];
        $password = md5($_POST['password']);
        $sql = "INSERT INTO admin SET 
            username='$user_name',
            password='$password',
            full_name='$name_full'  
        ";
        $res = mysqli_query($conn, $sql) or die(mysqli_error($conn));

        if($res==TRUE)
        {
            $_SESSION['adminsuccessfailure'] = "<div class='success'>Admin Added Successfully.</div>";
            header("location:".SITEURL.'admin/AdminManage.php');
        }
        else
        {
            $_SESSION['adminsuccessfailure'] = "<div class='error'>Failed to Add Admin.</div>";
            header("location:".SITEURL.'admin/AdminAdd.php');
        }

    }
    
?>