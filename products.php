<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
 ?>

<div class="main">
    <div class="content">
    		<?php 
	      	$name_cat = $cat->get_cat();
	      	if ($name_cat) {
	      		while ($result_name = $name_cat->fetch_assoc()) {
	      			# code...
	      		
	      	 ?>
    	<div class="content_top">
    		<div class="heading">
    		<h3><?php echo $result_name['catName'] ?></h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	     <div class="section group">
	     		<?php 
	      	$product_featheread = $cat->get_product_by_cat($result_name['catId']);
	      	if($product_featheread){
	      		while ($result = $product_featheread->fetch_assoc()) {
	      			      	
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
					 <h2><?php echo $result['productName'] ?></h2>
					 <p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
					 <p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VND" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php 
				}
				}
				 ?>
		</div>

<?php 
}
}
		?>
			
			
    </div>
 </div>
<?php 
	include 'inc/footer.php';
 ?>

