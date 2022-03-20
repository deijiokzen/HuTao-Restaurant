
<?php include('partials/menu.php'); ?>

        <div class="main-content">
            <div class="wrapper">
                <h1>Dashboard</h1>
                <br><br>
                <?php 
                    if(isset($_SESSION['login']))
                    {
                        echo $_SESSION['login'];
                        unset($_SESSION['login']);
                    }
                ?>
                <br><br>

                <div class="col-4 text-center">

                    <?php 
                        $sql = "SELECT * FROM category";
                        $res = mysqli_query($conn, $sql);
                        $countcategory = mysqli_num_rows($res);
                    ?>

                    <h1><?php echo $countcategory; ?></h1>
                    <br />
                    Categories
                </div>

                <div class="col-4 text-center">

                    <?php 
                        $sql2 = "SELECT * FROM food";
                        $res2 = mysqli_query($conn, $sql2);
                        $countfood = mysqli_num_rows($res2);
                    ?>

                    <h1><?php echo $countfood; ?></h1>
                    <br />
                    Foods
                </div>

                <div class="col-4 text-center">
                    
                    <?php 
                        $sql3 = "SELECT * FROM `order`";
                        $res3 = mysqli_query($conn, $sql3);
                        $countorders = mysqli_num_rows($res3);
                    ?>

                    <h1><?php echo $countorders; ?></h1>
                    <br />
                    Total Orders
                </div>

                <div class="col-4 text-center">
                    
                    <?php 

                        $sql4 = "SELECT SUM(total) AS Total FROM `order` WHERE status='Delivered'";
                        $res4 = mysqli_query($conn, $sql4);

                        $totalfetch = mysqli_fetch_assoc($res4);
                        $total_revenue = $totalfetch['Total'];

                    ?>

                    <h1>$<?php echo $total_revenue; ?></h1>
                    <br />
                    Revenue Generated
                </div>

                <div class="clearfix"></div>

            </div>
        </div>

<?php include('partials/footer.php') ?>