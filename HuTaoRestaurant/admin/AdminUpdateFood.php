<?php include('partials/menu.php'); ?>

<?php 
    if(isset($_GET['id']))
    {
        $id = $_GET['id'];
        $sql2 = "SELECT * FROM food WHERE id=$id";
        $result2 = mysqli_query($conn, $sql2);
        $row2 = mysqli_fetch_assoc($result2);
        $title = $row2['title'];
        $price = $row2['price'];
        $curr_cat = $row2['category_id'];
        $description = $row2['description'];
        $featured = $row2['featured'];
        $active = $row2['active'];
        $curr_img = $row2['image_name'];
       

    }
    else
    {
        header('location:'.SITEURL.'admin/AdminManageFood.php');
    }
?>


<div class="main-content">
    <div class="wrapper">
        <h1>Update Food</h1>
        <br><br>

        <form action="" method="POST" enctype="multipart/form-data">
        
        <table class="tbl-30">

            <tr>
                <td>Title: </td>
                <td>
                    <input type="text" name="title" value="<?php echo $title; ?>">
                </td>
            </tr>

            <tr>
                <td>Description: </td>
                <td>
                    <textarea name="description" cols="30" rows="5"><?php echo $description; ?></textarea>
                </td>
            </tr>

            <tr>
                <td>Price: </td>
                <td>
                    <input type="number" name="price" value="<?php echo $price; ?>">
                </td>
            </tr>

            <tr>
                <td>Current Image: </td>
                <td>
                    <?php 
                        if($curr_img == "")
                        {
                            echo "<div class='error'>Image not Available.</div>";
                        }
                        else
                        {
                            ?>
                            <img src="<?php echo SITEURL; ?>images/food/<?php echo $curr_img; ?>" width="150px">
                            <?php
                        }
                    ?>
                </td>
            </tr>

            <tr>
                <td>Select New Image: </td>
                <td>
                    <input type="file" name="image">
                </td>
            </tr>

            <tr>
                <td>Category: </td>
                <td>
                    <select name="category">

                        <?php 
                            $sql = "SELECT * FROM category WHERE active='Yes'";
                            $res = mysqli_query($conn, $sql);
                            $count = mysqli_num_rows($res);
                            if($count>0)
                            {
                                while($row=mysqli_fetch_assoc($res))
                                {
                                    $cat_title = $row['title'];
                                    $cat_id = $row['id'];
                                    ?>
                                    <option <?php if($curr_cat==$cat_id){echo "selected";} ?> value="<?php echo $cat_id ; ?>"><?php echo $cat_title ; ?></option>
                                    <?php
                                }
                            }
                            else
                            {
                                //CAtegory Not Available
                                echo "<option value='0'>Category Not Available.</option>";
                            }

                        ?>

                    </select>
                </td>
            </tr>

            <tr>
                <td>Featured: </td>
                <td>
                    <input <?php if($featured=="Yes") {echo "checked";} ?> type="radio" name="featured" value="Yes"> Yes 
                    <input <?php if($featured=="No") {echo "checked";} ?> type="radio" name="featured" value="No"> No 
                </td>
            </tr>

            <tr>
                <td>Active: </td>
                <td>
                    <input <?php if($active=="Yes") {echo "checked";} ?> type="radio" name="active" value="Yes"> Yes 
                    <input <?php if($active=="No") {echo "checked";} ?> type="radio" name="active" value="No"> No 
                </td>
            </tr>

            <tr>
                <td>
                    <input type="hidden" name="id" value="<?php echo $id; ?>">
                    <input type="hidden" name="curr_img" value="<?php echo $curr_img; ?>">

                    <input type="submit" name="submit" value="Update Food" class="buttn-secondary">
                </td>
            </tr>
        
        </table>
        
        </form>

        <?php 
        
            if(isset($_POST['submit']))
            {
                $id = $_POST['id'];
                $title = $_POST['title'];
                $price = $_POST['price'];
                $curr_img = $_POST['curr_img'];
                $category = $_POST['category'];
                $description = $_POST['description'];
        
                $active = $_POST['active'];
                $featured = $_POST['featured'];
                
                if(isset($_FILES['image']['name']))
                {
                    $imgg = $_FILES['image']['name']; 

                    if($imgg!="")
                    {
                        $ext = end(explode('.', $imgg));
                        $imgg = "Food-Name-".rand(0000, 9999).'.'.$ext; 
                        $src = $_FILES['image']['tmp_name'];
                        $dest = "../images/food/".$imgg; 
                        $upload = move_uploaded_file($src, $dest);
                        if($upload==false)
                        {
                            $_SESSION['upload'] = "<div class='error'>Failed to Upload new Image.</div>";
                            header('location:'.SITEURL.'admin/AdminManageFood.php');
                            die();
                        }
                        if($curr_img!="")
                        {
                            $rem_path = "../images/food/".$curr_img;
                            $rem = unlink($rem_path);
                            if($rem==false)
                            {
                                $_SESSION['remove-failed'] = "<div class='error'>Faile to remove current image.</div>";
                                header('location:'.SITEURL.'admin/AdminManageFood.php');
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
                $sql3 = "UPDATE food SET 
                    title = '$title',
                    description = '$description',
                    price = $price,
                    category_id = '$category',
                    featured = '$featured',
                    active = '$active',
                    image_name = '$imgg'
                    
                    WHERE id=$id
                ";
                $result3 = mysqli_query($conn, $sql3);
                if($result3==true)
                {
                    $_SESSION['update'] = "<div class='success'>Food Updated Successfully.</div>";
                    header('location:'.SITEURL.'admin/AdminManageFood.php');
                }
                else
                {
                    $_SESSION['update'] = "<div class='error'>Failed to Update Food.</div>";
                    header('location:'.SITEURL.'admin/AdminManageFood.php');
                }

                
            }
        
        ?>

    </div>
</div>

<?php include('partials/footer.php'); ?>