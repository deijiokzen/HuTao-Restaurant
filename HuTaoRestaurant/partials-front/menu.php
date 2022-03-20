<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Website</title>

    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    
    <section class="navbar">
        <div class="ENCAPSULATOR">
            <div class="logo">
                <a href="#" title="Logo">
                    <img src="images/logo.jpg" alt="Restaurant Logo" class="image-responsive">
                </a>
            </div>
            
            <div class="menu text-right">
                <ul>
                    <li>
                        <a href="<?php echo SITEURL; ?>">Home</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>CategoriesAll.php">Categories</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>AllFood.php">Foods</a>
                    </li>
                   
                   <li><?php
                   if(!empty($_SESSION["shopping_cart"])) 
                   {
                    $cart_count = count(array_keys($_SESSION["shopping_cart"]));
                    ?>
                    <div class="cart_div">
                    <a href="Orders.php">
                    <img src="images/cart-icon.png" /> Cart
                    <span><?php echo $cart_count; ?></span></a>
                    </div>
                    <?php
                    }
                    ?>
                    
                    
</li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </section>
