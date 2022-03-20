<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Update Admin</h1>

        <br><br>

        <?php 

            $id=$_GET['id'];
            $sql="SELECT * FROM admin WHERE id=$id";
            $result=mysqli_query($conn, $sql);
            if($result==true)
            {
                $count = mysqli_num_rows($result);
                if($count==1)
                {
                    $row=mysqli_fetch_assoc($result);
                    $full_name = $row['full_name'];
                    $username = $row['username'];
                }
                else
                {
                    header('location:'.SITEURL.'admin/AdminManage.php');
                }
            }
        
        ?>


        <form action="" method="POST">

            <table class="tbl-30">
                <tr>
                    <td>Full Name: </td>
                    <td>
                        <input type="text" name="name_full" value="<?php echo $full_name; ?>">
                    </td>
                </tr>

                <tr>
                    <td>Username: </td>
                    <td>
                        <input type="text" name="user_name" value="<?php echo $username; ?>">
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                        <input type="submit" name="submitupdate" value="Update Admin" class="buttn-secondary">
                    </td>
                </tr>

            </table>

        </form>
    </div>
</div>

<?php 

    if(isset($_POST['submitupdate']))
    {
        $id = $_POST['id'];
        $user_name = $_POST['user_name'];
        $name_full = $_POST['name_full'];


        $sql = "UPDATE admin SET
        full_name = '$name_full',
        username = '$user_name' 
        WHERE id='$id'
        ";

        $result = mysqli_query($conn, $sql);

        if($result==true)
        {

            $_SESSION['update'] = "<div class='success'>Admin Updated Successfully.</div>";
            header('location:'.SITEURL.'admin/AdminManage.php');
        }
        else
        {
            $_SESSION['update'] = "<div class='error'>Failed to Update Admin.</div>";
            header('location:'.SITEURL.'admin/AdminManage.php');
        }
    }

?>


<?php include('partials/footer.php'); ?>