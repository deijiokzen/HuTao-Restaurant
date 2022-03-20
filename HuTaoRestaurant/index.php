<?php include('Cart.php'); ?>

    <section class="food-search text-center">
        <div class="ENCAPSULATOR">
            
            <form action="<?php echo SITEURL; ?>SearchFood.php" method="POST">
                <input type="search" name="search" placeholder="Search for Food.." required>
                <input type="submit" name="submit" value="Search" class="buttn buttn-primary">
            </form>

        </div>
    </section>
  

    <?php 
        if(isset($_SESSION['order']))
        {
            echo $_SESSION['order'];
            unset($_SESSION['order']);
        }
    ?>

    <section class="categories">
        <div class="ENCAPSULATOR">
            <h2 class="text-center">Explore Foods</h2>

            <?php 
                
                $sql = "SELECT * FROM category WHERE active='Yes' AND featured='Yes' LIMIT 3";
                
                $res = mysqli_query($conn, $sql);
                
                $count = mysqli_num_rows($res);

                if($count>0)
                {
                    
                    while($row=mysqli_fetch_assoc($res))
                    {
                        
                        $id = $row['id'];
                        $title = $row['title'];
                        $image_name = $row['image_name'];
                        ?>
                        
                        <a href="<?php echo SITEURL; ?>FoodCategory.php?category_id=<?php echo $id; ?>">
                            <div class="box-3 float-ENCAPSULATOR">
                                <?php 
                                    
                                    if($image_name=="")
                                    {
                                        
                                        echo "<div class='error'>Image not Available</div>";
                                    }
                                    else
                                    {
                                        
                                        ?>
                                        <img src="<?php echo SITEURL; ?>images/category/<?php echo $image_name; ?>" alt="Pizza" class="image-responsive image-curve">
                                        <?php
                                    }
                                ?>
                                

                                <h3 class="float-text text-white"><?php echo $title; ?></h3>
                            </div>
                        </a>

                        <?php
                    }
                }
                else
                {
                    
                    echo "<div class='error'>Category not Added.</div>";
                }
            ?>


            <div class="clearfix"></div>
        </div>
    </section>

    <section class="menufood">
        <div class="ENCAPSULATOR">
            <h2 class="text-center">Food Menu</h2>

            <?php 
            
            
            
            $sql2 = "SELECT * FROM food WHERE active='Yes' AND featured='Yes' LIMIT 12";

            
            $res2 = mysqli_query($conn, $sql2);

            
            $count2 = mysqli_num_rows($res2);

            
            if($count2>0)
            {
                
                while($row=mysqli_fetch_assoc($res2))
                {
		   
                    
                    $id = $row['id'];
                    $title = $row['title'];
                    $price = $row['price'];
                    $description = $row['description'];
                    $image_name = $row['image_name'];
                    echo "<form method='post' action=''>
		            <input type='hidden' name='id' value=".$row['id']."/>";
                    ?>
		     
                    <div class="menufood-box">
                        <div class="menufood-img">
                            <?php 
                                
                                if($image_name=="")
                                {
                                    
                                    echo "<div class='error'>Image not available.</div>";
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
                
                echo "<div class='error'>Food not available.</div>";
            }
            
            ?>

            

 

            <div class="clearfix"></div>

            

        </div>

        <p class="text-center">
            <a href="#">See All Foods</a>
        </p>
    </section>


    
    <?php include('partials-front/footer.php'); ?>