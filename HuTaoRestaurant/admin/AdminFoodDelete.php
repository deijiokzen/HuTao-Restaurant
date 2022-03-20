<?php 
    
    include('../config/constants.php');

    

    if(isset($_GET['id']) && isset($_GET['image_name'])) 
    {
        $id = $_GET['id'];
        $imgg = $_GET['image_name'];
        if($imgg != "")
        {
            $pth = "../images/food/".$imgg;
            $rem= unlink($path);
            if($rem==false)
            {
                $_SESSION['upload'] = "<div class='error'>Failed to Remove Image File.</div>";
                header('location:'.SITEURL.'admin/AdminManageFood.php');
                die();
            }

        }
        $sql = "DELETE FROM food WHERE id=$id";
        $res = mysqli_query($conn, $sql);

        if($res==true)
        {
            $_SESSION['delete'] = "<div class='success'>Food Deleted Successfully.</div>";\
            header('location:'.SITEURL.'admin/AdminManageFood.php');
        }
        else
        {
            $_SESSION['delete'] = "<div class='error'>Failed to Delete Food.</div>";\
            header('location:'.SITEURL.'admin/AdminManageFood.php');
        }

        

    }
    else
    {

        $_SESSION['unauthorize'] = "<div class='error'>Unauthorized Access.</div>";
        header('location:'.SITEURL.'admin/AdminManageFood.php');
    }

?>