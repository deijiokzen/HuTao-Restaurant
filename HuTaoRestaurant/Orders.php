
<?php include('partials-front/menu.php'); ?>



    <section class="food-search">
        <div class="ENCAPSULATOR">
        <?php if(isset($_SESSION['order']))
        {
            echo $_SESSION['order'];
            unset($_SESSION['order']);
        }?>
            <h2 class="text-center text-white">Fill this form to confirm your order.</h2>

            <form action="" method="POST" class="order">
                <fieldset>
                    <legend>Selected Food</legend>

                
                        <?php 
                         	if(isset($_SESSION["shopping_cart"]))
                            foreach ($_SESSION["shopping_cart"] as $product){
                            ?>
                
                            <div class="menufood-img">
                            <?php 
                            if( $product["image_name"]=="")
                            {
                                echo "<div class='error'>Image not Available.</div>";
                            }
                            else
                            {
                                ?>
                                <img src="<?php echo SITEURL; ?>images/food/<?php echo $product["image_name"]; ?>" alt="Chicke Hawain Pizza" class="image-responsive image-curve" >
                                </div>
    
                                <div class="menufood-desc">
                                <h3><?php echo  $product["title"]; ?></h3>
                                <input type="hidden" name="food" value="<?php echo  $product["title"]; ?>">

                                <p class="food-price">$<?php echo $product["price"]; ?></p>
                                <input type="hidden" name="price" value="<?php echo $product["price"]; ?>">

                                <div class="order-label">Quantity</div>
                                <input type="number" name="<?php echo $product["id"] ?>" class="input-responsive" value="1" required>
                                </div>
                            <?php
                            }
                        }?>
                        
                 

                </fieldset>
                
                <fieldset>
                    <legend>Delivery Details</legend>
                    <div class="order-label">Full Name</div>
                    <input type="text" name="full-name" placeholder="E.g. Saud Jai" class="input-responsive" required>

                    <div class="order-label">Phone Number</div>
                    <input type="tel" name="contact" placeholder="E.g. 03322xxxxxx" class="input-responsive" required>

                    <div class="order-label">Email</div>
                    <input type="email" name="email" placeholder="E.g. arunsaud@hotmail.com" class="input-responsive" required>

                    <div class="order-label">Address</div>
                    <textarea name="address" rows="10" placeholder="E.g. Street, City, Country" class="input-responsive" required></textarea>

                    <input type="submit" name="submit" value="Confirm Order" class="buttn buttn-primary">
                </fieldset>

            </form>

            <?php 
                $res2=false;
                if(isset($_POST['submit']))
                {
                    if(isset($_SESSION["shopping_cart"]))
                    foreach ($_SESSION["shopping_cart"] as $product)
                    {
                        $food = $product["title"];
                        $id=$product["id"];
                        $price =$product["price"];                        
                        $qty = $_POST["$id"];
               
                    echo $food, $id, $price, $qty;
                    $total = $price * $qty; 

                    $order_date = date("Y-m-d h:i:sa"); 

                    $status = "Ordered";  

                    $customer_name = $_POST['full-name'];
                    $customer_contact = $_POST['contact'];
                    $customer_email = $_POST['email'];
                    $customer_address = $_POST['address'];

                    $sql2 = "INSERT INTO `order` SET 
                        food = '$food',
                        price = $price,
                        qty = $qty,
                        total = $total,
                        order_date = '$order_date',
                        status = '$status',
                        customer_name = '$customer_name',
                        customer_contact = '$customer_contact',
                        customer_email = '$customer_email',
                        customer_address = '$customer_address'
                    ";
                    $sql3 = "INSERT INTO `customer` SET 
                     customer_name = '$customer_name',
                     customer_contact = '$customer_contact',
                     customer_email = '$customer_email',
                     customer_address = '$customer_address'
                 ";


                    $res2 = mysqli_query($conn, $sql2);
                    $res3 = mysqli_query($conn, $sql3);
                }
                    if($res2==true && $res3==true)
                    {
                        unset($_SESSION["shopping_cart"]);
  
                        $shopping_cart= array();     
                        $_SESSION['order'] = "<div class='success text-center'>Food Ordered Successfully.</div>";
                        header('location:'.SITEURL);
                    }
                    else
                    {
                      $_SESSION['order'] = "<div class='error text-center'>Failed to Order Food.</div>";
                       header('location:'.SITEURL);
                    }

                }
            
            ?>

        </div>
    </section>

    <?php include('partials-front/footer.php'); ?>