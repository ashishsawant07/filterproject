<?php

@include 'config.php';
session_start();

// $order_id2 = $_GET['order_id'];
$order_id = $_SESSION['order_id'];

if(isset($_POST['submit'])){

   $name = $_POST['name'];
   $email = $_POST['email'];
   $order_id =  $_POST['order_id'];
   $image = $_POST['image'];

   $success = mysqli_query($conn, "INSERT INTO `payment`(order_id, name, email, image) VALUES('$order_id', '$name', '$email', '$image')") or die('query failed');
   if($success){
      $message[] = 'payment received successfully!';
      header("location:home.php");
   } else {
      die('query failed');
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>

<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>
   
<section class="form-container">

   <form action="" method="post">
      <h3>payment pay now</h3>
      <h3>#<?php echo $order_id; ?></h3>
      <img src="./images/QR_img.jpg" style="height:25rem;" alt="qr">
      <input type="hidden" name="order_id" value="<?php echo $order_id; ?>">
      <input type="file" name="image" class="box" placeholder="transaction screenshop upload" required>
      <input type="name" name="name" class="box" placeholder="user name" value="<?php echo $_SESSION['user_name'] ?>" required>
      <input type="email" name="email" class="box" placeholder="user email" value="<?php echo $_SESSION['user_email'] ?>" required>
      <input type="submit" class="btn" name="submit" value="pay now">
   </form>

</section>

</body>
</html>