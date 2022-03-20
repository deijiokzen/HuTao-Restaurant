<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Food</h1>

        <br><br>

        <?php 
            if(isset($_SESSION['upload']))
            {
                echo $_SESSION['upload'];
                unset($_SESSION['upload']);
            }
        ?>

        <form action="" method="POST" enctype="multipart/form-data">
        
            <table class="tbl-30">

                <tr>
                    <td>Title For Food: </td>
                    <td>
                        <input type="text" name="title" placeholder="Title of the Food">
                    </td>
                </tr>

                <tr>
                    <td>Description For Food: </td>
                    <td>
                        <textarea name="descforfood" cols="30" rows="5" placeholder="Description of the Food."></textarea>
                    </td>
                </tr>

                <tr>
                    <td>Price For Food: </td>
                    <td>
                        <input type="number" name="priceforfood">
                    </td>
                </tr>

                <tr>
                    <td>Select Image For Food: </td>
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
                                        $id = $row['id'];
                                        $title = $row['title'];
                                        ?>
                                        <option value="<?php echo $id; ?>"><?php echo $title; ?></option>
                                        <?php
                                    }
                                }
                                else
                                {
                                    ?>
                                    <option value="0">No Category Found</option>
                                    <?php
                                }                            
                            ?>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td>Is it Featured on Main Page?: </td>
                    <td>
                        <input type="radio" name="Isfeatured" value="Yes"> Yes 
                        <input type="radio" name="Isfeatured" value="No"> No
                    </td>
                </tr>

                <tr>
                    <td>Is it Active?: </td>
                    <td>
                        <input type="radio" name="Isactive" value="Yes"> Yes 
                        <input type="radio" name="Isactive" value="No"> No
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" name="submit" value="Add Food" class="buttn-secondary">
                    </td>
                </tr>

            </table>

        </form>

        
        <?php 

            if(isset($_POST['submit']))
            {
                $category = $_POST['category'];
                $title = $_POST['title'];
                $descforfood = $_POST['descforfood'];
                $priceforfood = $_POST['priceforfood'];
               

                if(isset($_POST['Isfeatured']))
                {
                    $featured = $_POST['Isfeatured'];
                }
                else
                {
                    $featured = "No"; 
                }

                if(isset($_POST['Isactive']))
                {
                    $active = $_POST['Isactive'];
                }
                else
                {
                    $active = "No"; 
                }


                if(isset($_FILES['image']['name']))
                {
                    $imgg = $_FILES['image']['name'];

                    if($image_name!="")
                    {
                        $ext = end(explode('.', $imgg));
                        $imgg= "Food-Name-".rand(0000,9999).".".$ext; 
                        $srcforimg = $_FILES['image']['tmp_name'];
                        $dstforimg = "../images/food/".$imgg;
                        $upload = move_uploaded_file($srcforimg, $dstforimg);

                        if($upload==false)
                        {
  
                            $_SESSION['upload'] = "<div class='error'>Failed to Upload Image.</div>";
                            header('location:'.SITEURL.'admin/AdminFood.php');
             
                            die();
                        }

                    }

                }
                else
                {
                    $image_name = "";
                }
                $sql2 = "INSERT INTO food SET 
                    title = '$title',
                    description = '$descforfood',
                    price = $priceforfood,
                    image_name = '$image_name',
                    category_id = $category,
                    featured = '$featured',
                    active = '$active'
                ";

                $res2 = mysqli_query($conn, $sql2);
                if($res2 == true)
                {

                    $_SESSION['add'] = "<div class='success'>Food Added Successfully.</div>";
                    header('location:'.SITEURL.'admin/AdminManageFood.php');
                }
                else
                {

                    $_SESSION['add'] = "<div class='error'>Failed to Add Food.</div>";
                    header('location:'.SITEURL.'admin/AdminManageFood.php');
                }

                
            }

        ?>


    </div>
</div>

<?php include('partials/footer.php'); ?>