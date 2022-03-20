<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Manage Order</h1>

                <br /><br /><br />

                <?php 
                    if(isset($_SESSION['update']))
                    {
                        echo $_SESSION['update'];
                        unset($_SESSION['update']);
                    }
                ?>
                <br><br>

                <table class="tbl-full">
                    <tr>
                        <th>Index.</th>
                        <th>Food</th>
                        <th>Price For Food</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Order Date</th>
                        <th>Status</th>
                        <th>Name of Customer</th>
                        <th>Contact</th>
                        <th>Email Address</th>
                        <th>Address</th>
                        <th>Actions</th>
                    </tr>

                    <?php 
                        $sql = "SELECT * FROM `order` ORDER BY id DESC"; 
                        $res = mysqli_query($conn, $sql);
                        $count = mysqli_num_rows($res);
                        $sn = 1; 

                        if($count>0)
                        {
                            while($row=mysqli_fetch_assoc($res))
                            {
                                $id = $row['id'];
                                $food = $row['food'];
                                $cust_name = $row['customer_name'];
                                $cust_contact = $row['customer_contact'];
                                $cust_email = $row['customer_email'];
                                $cust_address = $row['customer_address'];
                                $date = $row['order_date'];
                                $status = $row['status'];
                                $price = $row['price'];
                                $qty = $row['qty'];
                                $total = $row['total'];
                                
                                ?>

                                    <tr>
                                        <td><?php echo $sn++; ?>. </td>
                                        <td><?php echo $food; ?></td>
                                        <td><?php echo $price; ?></td>
                                        <td><?php echo $qty; ?></td>
                                        <td><?php echo $total; ?></td>
                                        <td><?php echo $date; ?></td>

                                        <td>
                                            <?php 

                                                if($status=="Ordered")
                                                {
                                                    echo "<label>$status</label>";
                                                }
                                                elseif($status=="On Delivery")
                                                {
                                                    echo "<label style='color: orange;'>$status</label>";
                                                }
                                                elseif($status=="Delivered")
                                                {
                                                    echo "<label style='color: green;'>$status</label>";
                                                }
                                                elseif($status=="Cancelled")
                                                {
                                                    echo "<label style='color: red;'>$status</label>";
                                                }
                                            ?>
                                        </td>

                                        <td><?php echo $cust_name; ?></td>
                                        <td><?php echo $cust_contact; ?></td>
                                        <td><?php echo $cust_email; ?></td>
                                        <td><?php echo $cust_address; ?></td>
                                        <td>
                                            <a href="<?php echo SITEURL; ?>admin/AdminUpdateOrders.php?id=<?php echo $id; ?>" class="buttn-secondary">Update Order</a>
                                        </td>
                                    </tr>

                                <?php

                            }
                        }
                        else
                        {
                            echo "<tr><td colspan='12' class='error'>Orders are not Available</td></tr>";
                        }
                    ?>

 
                </table>
    </div>
    
</div>

<?php include('partials/footer.php'); ?>