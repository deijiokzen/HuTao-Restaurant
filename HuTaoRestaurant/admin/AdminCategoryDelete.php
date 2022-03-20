<?php 
    include('../config/constants.php');
    if(isset($_GET['id']) AND isset($_GET['image_name']))
    {
        $id = $_GET['id'];
        $imgg = $_GET['image_name'];
        if($imgg != "")
        {
            $path = "../images/category/".$imgg;
            $rem = unlink($path);
            if($rem==false)
            {
                $_SESSION['remove'] = "<div class='error'>Failed to Remove Category Image.</div>";
                header('location:'.SITEURL.'admin/AdminManageCategory.php');
                die();
            }
        }
        $sql = "DELETE FROM category WHERE id=$id";
        $result = mysqli_query($conn, $sql);
        if($result==true)
        {
            $_SESSION['delete'] = "<div class='success'>Category Deleted Successfully.</div>";
            header('location:'.SITEURL.'admin/AdminManageCategory.php');
        }
        else
        {
            $_SESSION['delete'] = "<div class='error'>Failed to Delete Category.</div>";
            header('location:'.SITEURL.'admin/AdminManageCategory.php');
        }

 

    }
    else
    {
        header('location:'.SITEURL.'admin/AdminManageCategory.php');
    }
?>