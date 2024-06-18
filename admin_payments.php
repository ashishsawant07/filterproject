<?php

@include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
};

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `payment` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_payments.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>payments</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   

 <!-- <a id="printPDF" o href="#" class="btn" style="position:absolute; top:95px; right:50px;">Print</a>
 -->
 <button style="right: 189px;
    top: 92px;
    position: absolute;"
    onclick="convertToPDF()" class="btn">Print</button>
   <div id="myDiv" class="box-container">

   
<?php @include 'admin_header.php'; ?>

<section class="placed-orders">
 
   <h1 class="title">payments</h1>

   <div class="box-container">


      <?php
      
      $select_orders = mysqli_query($conn, "SELECT * FROM `payment`") or die('query failed');
      if(mysqli_num_rows($select_orders) > 0){
         while($fetch_orders = mysqli_fetch_assoc($select_orders)){
      ?>
      <div class="box">
         <p> order id : <span><?php echo $fetch_orders['order_id']; ?></span> </p>
         <p> name : <span><?php echo $fetch_orders['name']; ?></span> </p>
         <p> email : <span><?php echo $fetch_orders['email']; ?></span> </p>
         <img src="images/<?php echo $fetch_orders['image']; ?>" style="height:63rem;" alt="">
         <a href="admin_payments.php?delete=<?php echo $fetch_orders['id']; ?>" class="delete-btn" onclick="return confirm('delete this paymemts')">delete</a>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">no payments placed yet!</p>';
      }
      ?>
   </div>

</section>


<script>

function convertToPDF() {
  const element = document.getElementById("myDiv");

  html2pdf().from(element).set({
                 margin: [10, 200, 10, 10], //top,left,bottom,right
                 pagebreak: { avoid: 'tr' },
                 jsPDF: { orientation: 'landscape', unit: 'pt', format: 'letter', compressPDF: false }
             }).save("ActiveDoc.pdf")

}
        
</script>










<script src="js/admin_script.js"></script>

</body>
</html>