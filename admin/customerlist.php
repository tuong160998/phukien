<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php 
    $filepath = realpath(dirname(__FILE__));
    include_once ($filepath.'/../classes/customer.php');
    include_once ($filepath.'/../helpers/format.php');
 ?>
<?php
    $cs = new customer(); 
   
    
    
  ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Thông tin khách hàng</h2>      
               <div class="block"> 
                
                
               <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>No.</th>
							<th>Tên khách hàng</th>
							<th>Địa chỉ</th>
                            <th>Thành phố</th>
                            <th>Quê quán</th>
                            <th>Zipcode</th>
                            <th>Phone</th>
                            <th>Email</th>
                            
						</tr>
					</thead>
					<tbody>
						<?php 
							  $get_customer = $cs->list_customers();
                              if($get_customer){
                                $i = 0;
                                  while ($result = $get_customer->fetch_assoc()) {
                                    $i++;
								
						?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $result['name']; ?></td>
							<td><?php echo $result['address']; ?></td>
                            <td><?php echo $result['city']; ?></td>
                            <td><?php echo $result['country']; ?></td>
                            <td><?php echo $result['zipcode']; ?></td>
                            <td><?php echo $result['phone']; ?></td>
                            <td><?php echo $result['email']; ?></td>
                            
						</tr>
						<?php 
							}
						}
						 ?>
					</tbody>
				</table>
                   

                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>