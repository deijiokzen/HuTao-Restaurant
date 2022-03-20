    
<?php include('Cart.php'); ?>

    <?php 
        
        if(isset($_GET['category_id']))
        {
            
            $category_id = $_GET['category_id'];
            
            $sql = "SELECT title FROM category WHERE id=$category_id";

            
            $res = mysqli_query($conn, $sql);

            
            $row = mysqli_fetch_assoc($res);
            
            $category_title = $row['title'];
        }
        else
        {
            
            
            header('location:'.SITEURL);
        }
    ?>


    <section class="food-search text-center">
        <div class="ENCAPSULATOR">
            
            <h2>Foods on <a href="#" class="text-white">"<?php echo $category_title; ?>"</a></h2>

        </div>
    </section>
  
    <section class="menufood">
        <div class="ENCAPSULATOR">
            <h2 class="text-center">Food Menu</h2>

            <?php 
            
                
                $sql2 = "SELECT * FROM food WHERE category_id=$category_id";

                
                $res2 = mysqli_query($conn, $sql2);

                
                $count2 = mysqli_num_rows($res2);

                
                if($count2>0)
                {
                    
                    while($row2=mysqli_fetch_assoc($res2))
                    {
                        $id = $row2['id'];
                        $title = $row2['title'];
                        $price = $row2['price'];
                        $description = $row2['description'];
                        $image_name = $row2['image_name'];
                        echo "<form method='post' action=''>
		            <input type='hidden' name='id' value=".$id ."/>";
                    ?>
                        
                        <div class="menufood-box">
                            <div class="menufood-img">
                                <?php 
                                    if($image_name=="")
                                    {
                                        
                                        echo "<div class='error'>Image not Available.</div>";
                                    }
                                    else
                                    {
                                        
                                        ?>
                                        <img src="<?php echo SITEURL; ?>images/food/<?php echo $image_name; ?>" alt="Chicke Hawain Pizza" class="image-responsive image-curve">
                                        <?php
                                    }
                                ?>
                                
                            </div>

                            <div class="menufood-desc">
                                <h4><?php echo $title; ?></h4>
                                <p class="food-price">$<?php echo $price; ?></p>
                                <p class="food-detail">
                                    <?php echo $description; ?>
                                </p>
                                <br>
                                <button type='submit' class="buttn buttn-primary">Buy Now</button>
	                  </form>
                            </div>
                        </div>

                        <?php
                    }
                }
                else
                {
                    
                    echo "<div class='error'>Food not Available.</div>";
                }
            
            ?>

            

            <div class="clearfix"></div>

            

        </div>

    </section>

    <?php include('partials-front/footer.php'); ?>