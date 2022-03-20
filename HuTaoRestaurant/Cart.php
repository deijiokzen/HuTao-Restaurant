<?php include('partials-front/menu.php'); ?>
<?php
function checker($K,$val) {
	foreach($K as $product)
	if($product['id']==$val)
	{
		return 1;
	}
	return 0;
}



$status="";
if (isset($_POST['id']) && $_POST['id']!=""){
$T_ID = $_POST['id'];
//echo "<h2>" .$T_ID. "</h2>";
$result = mysqli_query($conn,"SELECT * FROM `food` WHERE `id`='$T_ID'");
$row = mysqli_fetch_assoc($result);
$title = $row['title'];
$id = $row['id'];
$price = $row['price'];
$image_name = $row['image_name'];

$cartArray = array(
	$T_ID=>array(
	'title'=>$title,
	'id'=>$id,
	'price'=>$price,
	'quantity'=>1,
	'image_name'=>$image_name)
);

if(empty($_SESSION["shopping_cart"])) {
	$_SESSION["shopping_cart"] = $cartArray;

	$status = "<div class='box'>Product is added to your cart!</div>";
}else{
	
	
	if(checker($_SESSION["shopping_cart"],$T_ID)) 
	{
	
	} 
	else 
	{
	$_SESSION["shopping_cart"] = array_merge($_SESSION["shopping_cart"],$cartArray);

	}

	}
}

?>