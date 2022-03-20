<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Update Order</h1>
        <br><br>


        <?php 
        
            if(isset($_GET['id']))
            {
                $id=$_GET['id'];
                $sql = "SELECT * FROM `order` WHERE id=$id";
                $result = mysqli_query($conn, $sql);
                $count = mysqli_num_rows($result);

                if($count==1)
                {
                    $row=mysqli_fetch_assoc($result);
                    $price = $row['price'];
                    $qty = $row['qty'];
                    $food = $row['food'];
                    $customer_name = $row['customer_name'];
                    $customer_email = $row['customer_email'];
                    $customer_contact = $row['customer_contact'];
                    $customer_address= $row['customer_address'];
                    $status = $row['status'];
                }
                else
                {

                    header('location:'.SITEURL.'admin/AdminManageOrders.php');
                }
            }
            else
            {
                header('location:'.SITEURL.'admin/AdminManageOrders.php');
            }
        
        ?>

        <form action="" method="POST">
        
            <table class="tbl-30">
                <tr>
                    <td>Food Name</td>
                    <td><b> <?php echo $food; ?> </b></td>
                </tr>

                <tr>
                    <td>Price</td>
                    <td>
                        <b> $ <?php echo $price; ?></b>
                    </td>
                </tr>

                <tr>
                    <td>Qty</td>
                    <td>
                        <input type="number" name="qty" value="<?php echo $qty; ?>">
                    </td>
                </tr>

                <tr>
                    <td>Status</td>
                    <td>
                        <select name="status">
                            <option <?php if($status=="Ordered"){echo "selected";} ?> value="Ordered">Ordered(Not being Serviced)</option>
                            <option <?php if($status=="On Delivery"){echo "selected";} ?> value="On Delivery">Delivery On It's Way</option>
                            <option <?php if($status=="Delivered"){echo "selected";} ?> value="Delivered">Delivered To Customer</option>
                            <option <?php if($status=="Cancelled"){echo "selected";} ?> value="Cancelled">Cancelled</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>Customer Name: </td>
                    <td>
                        <input type="text" name="customer_name" value="<?php echo $customer_name; ?>">
                    </td>
                </tr>

                <tr>
                    <td>Customer Contact: </td>
                    <td>
                        <input type="text" name="customer_contact" value="<?php echo $customer_contact; ?>">
                    </td>
                </tr>

                <tr>
                    <td>Customer Email: </td>
                    <td>
                        <input type="text" name="customer_email" value="<?php echo $customer_email; ?>">
                    </td>
                </tr>

                <tr>
                    <td>Customer Address: </td>
                    <td>
                        <textarea name="customer_address" cols="30" rows="5"><?php echo $customer_address; ?></textarea>
                    </td>
                </tr>

                <tr>
                    <td clospan="2">
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                        <input type="hidden" name="price" value="<?php echo $price; ?>">

                        <input type="submit" name="submit" value="Update Order" class="buttn-secondary">
                    </td>
                </tr>
            </table>
        
        </form>


        <?php 
            if(isset($_POST['submit']))
            {
             
                $id = $_POST['id'];
                $qty = $_POST['qty'];
                $price = $_POST['price'];
                $total = $price * $qty;
                $status = $_POST['status'];
                $customer_name = $_POST['customer_name'];
                $customer_email = $_POST['customer_email'];
                $customer_address = $_POST['customer_address'];
                $customer_contact = $_POST['customer_contact'];
               

                $sql2 = "UPDATE `order` SET 
                    qty = $qty,
                    total = $total,
                    status = '$status',
                    customer_name = '$customer_name',
                    customer_email = '$customer_email',
                    customer_address = '$customer_address',
                    customer_contact = '$customer_contact'
                    
                    WHERE id=$id
                ";
                $result2 = mysqli_query($conn, $sql2);
                if($result2==true)
                {
                    $_SESSION['update'] = "<div class='success'>Order Updated Successfully.</div>";
                    header('location:'.SITEURL.'admin/AdminManageOrders.php');
                }
                else
                {
                    $_SESSION['update'] = "<div class='error'>Failed to Update Order.</div>";
                    header('location:'.SITEURL.'admin/AdminManageOrders.php');
                }
            }
        ?>


    </div>
</div>

<?php include('partials/footer.php'); ?>
