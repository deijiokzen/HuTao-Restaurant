<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Update Category</h1>

        <br><br>


        <?php 
        
            if(isset($_GET['id']))
            {
                $id = $_GET['id'];
                $sql = "SELECT * FROM category WHERE id=$id";

                $result = mysqli_query($conn, $sql);

                $count = mysqli_num_rows($result);

                if($count==1)
                {
                    $row = mysqli_fetch_assoc($result);
                    $featured = $row['featured'];
                    $active = $row['active'];
                    $title = $row['title'];
                    $curr_img = $row['image_name'];
                    
                }
                else
                {
                    $_SESSION['no-category-found'] = "<div class='error'>Category not Found.</div>";
                    header('location:'.SITEURL.'admin/AdminManageCategory.php');
                }

            }
            else
            {
                header('location:'.SITEURL.'admin/AdminManageCategory.php');
            }
        
        ?>

        <form action="" method="POST" enctype="multipart/form-data">

            <table class="tbl-30">
                <tr>
                    <td>Title: </td>
                    <td>
                        <input type="text" name="title" value="<?php echo $title; ?>">
                    </td>
                </tr>

                <tr>
                    <td>Current Image: </td>
                    <td>
                        <?php 
                            if($curr_img != "")
                            {
                                ?>
                                <img src="<?php echo SITEURL; ?>images/category/<?php echo $curr_img; ?>" width="150px">
                                <?php
                            }
                            else
                            {
                                echo "<div class='error'>Image Not Added.</div>";
                            }
                        ?>
                    </td>
                </tr>

                <tr>
                    <td>New Image You Want to Insert: </td>
                    <td>
                        <input type="file" name="image">
                    </td>
                </tr>

                <tr>
                    <td>Is it Featured on Main Page?: </td>
                    <td>
                        <input <?php if($featured=="Yes"){echo "checked";} ?> type="radio" name="featured" value="Yes"> Yes 

                        <input <?php if($featured=="No"){echo "checked";} ?> type="radio" name="featured" value="No"> No 
                    </td>
                </tr>

                <tr>
                    <td>Is it Active outside Main Page?: </td>
                    <td>
                        <input <?php if($active=="Yes"){echo "checked";} ?> type="radio" name="active" value="Yes"> Yes 

                        <input <?php if($active=="No"){echo "checked";} ?> type="radio" name="active" value="No"> No 
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="hidden" name="curr_img" value="<?php echo $curr_img; ?>">
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                        <input type="submit" name="submit" value="Update Category" class="buttn-secondary">
                    </td>
                </tr>

            </table>

        </form>

        <?php 
        
            if(isset($_POST['submit']))
            {
                $curr_img = $_POST['curr_img'];
                $id = $_POST['id'];
                $featured = $_POST['featured'];
                $active = $_POST['active'];
                $title = $_POST['title'];
               

                if(isset($_FILES['image']['name']))
                {
                    $imgg = $_FILES['image']['name'];

                    if($imgg != "")
                    {
                        $ext = end(explode('.', $imgg));
                        $imgg = "Food_Category_".rand(000, 1500).'.'.$ext; 
                        $srcpath = $_FILES['image']['tmp_name'];
                        $destpath = "../images/category/".$imgg;
                        $upload = move_uploaded_file($srcpath, $destpath);
                        if($upload==false)
                        {
                            $_SESSION['upload'] = "<div class='error'>Failed to Upload Image. </div>";
                            header('location:'.SITEURL.'admin/AdminManageCategory.php');
                            die();
                        }
                        if($curr_img!="")
                        {
                            $remove_path = "../images/category/".$curr_img;
                            $remove = unlink($remove_path);
                            if($remove==false)
                            {
                                $_SESSION['failed-remove'] = "<div class='error'>Failed to remove current Image.</div>";
                                header('location:'.SITEURL.'admin/AdminManageCategory.php');
                                die();
                            }
                        }
                        

                    }
                    else
                    {
                        $imgg = $curr_img;
                    }
                }
                else
                {
                    $imgg = $curr_img;
                }

                $sql2 = "UPDATE category SET 
                    title = '$title',
                    image_name = '$imgg',
                    featured = '$featured',
                    active = '$active' 
                    WHERE id=$id
                ";

                $result2 = mysqli_query($conn, $sql2);
                if($result2==true)
                {
                    $_SESSION['update'] = "<div class='success'>Category Updated Successfully.</div>";
                    header('location:'.SITEURL.'admin/AdminManageCategory.php');
                }
                else
                {
                    $_SESSION['update'] = "<div class='error'>Failed to Update Category.</div>";
                    header('location:'.SITEURL.'admin/AdminManageCategory.php');
                }

            }
        
        ?>

    </div>
</div>

<?php include('partials/footer.php'); ?>