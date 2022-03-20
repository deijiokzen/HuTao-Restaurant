<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Category</h1>

        <br><br>

        <?php 
        
            if(isset($_SESSION['catsuccessfailure'] ))
            {
                echo $_SESSION['catsuccessfailure'] ;
                unset($_SESSION['catsuccessfailure'] );
            }

            if(isset($_SESSION['upload']))
            {
                echo $_SESSION['upload'];
                unset($_SESSION['upload']);
            }
        
        ?>

        <br><br>

        <form action="" method="POST" enctype="multipart/form-data">

            <table class="tbl-30">
                <tr>
                    <td>Title: </td>
                    <td>
                        <input type="text" name="titlecat" placeholder="Category Title">
                    </td>
                </tr>

                <tr>
                    <td>Upload Image: </td>
                    <td>
                        <input type="file" name="img">
                    </td>
                </tr>

                <tr>
                    <td>Featured: </td>
                    <td>
                        <input type="radio" name="featured" value="Yes"> Yes 
                        <input type="radio" name="featured" value="No"> No 
                    </td>
                </tr>

                <tr>
                    <td>Active: </td>
                    <td>
                        <input type="radio" name="active" value="Yes"> Yes 
                        <input type="radio" name="active" value="No"> No 
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" name="submitcat" value="Add Category" class="buttn-secondary">
                    </td>
                </tr>

            </table>

        </form>


        <?php 
        
        
            if(isset($_POST['submitcat']))
            {
                
                $title = $_POST['titlecat'];
                if(isset($_POST['featured']))
                {
                    $featured = $_POST['featured'];
                }
                else
                {
                    $featured = "No";
                }
                if(isset($_POST['active']))
                {
                    $active = $_POST['active'];
                }
                else
                {
                    $active = "No";
                }
                if(isset($_FILES['img']['name']))
                {
                    $img_nam = $_FILES['img']['name'];
                    if($img_nam != "")
                    {
                        $ext = end(explode('.', $img_nam));
                        $img_nam = "Food_Category_".rand(000, 999).'.'.$ext; 
                        $src_path = $_FILES['img']['tmp_name'];
                        $dest_path= "../images/category/".$img_nam;
                        $upload = move_uploaded_file($src_path, $dest_path);
                        if($upload==false)
                        {
                            $_SESSION['upload'] = "<div class='error'>Failed to Upload Image. </div>";
                            header('location:'.SITEURL.'admin/AdminCategory.php');
                            die();
                        }

                    }
                }
                else
                {
                    $img_nam="";
                }
                $sql = "INSERT INTO category SET 
                    title='$title',
                    image_name='$img_nam',
                    featured='$featured',
                    active='$active'
                ";
                $res = mysqli_query($conn, $sql);
                if($res==true)
                {
                    $_SESSION['catsuccessfailure'] = "<div class='success'>Category Added Successfully.</div>";
                    header('location:'.SITEURL.'admin/AdminManageCategory.php');
                }
                else
                {
                    $_SESSION['catsuccessfailure']  = "<div class='error'>Failed to Add Category.</div>";
                    header('location:'.SITEURL.'admin/AdminCategory.php');
                }
            }
        
        ?>

    </div>
</div>

<?php include('partials/footer.php'); ?>