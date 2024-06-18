<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        
        <div class="content">
            <h3>why choose us?</h3>
            <!-- <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum odit voluptatum alias sed est in magni nihil nisi deleniti nostrum.</p> -->
            <p>Filtering water can result in not only better tasting, but also better smelling water by removing chemicals, pesticides, chlorine, bacterial contaminants and heavy metals.</p>
            <a href="shop.php" class="btn">shop now</a>
        </div>
        
        <div class="image">
            <img src="images/a1.jpg" alt="">
        </div>
    </div>

    <div class="flex">
        
        <div class="content">
            <h3>what we provide?</h3>
            <p>Pure water keeps the blood vessels open, allowing blood to travel to the kidneys and transfer the essential nutrients. It also helps the kidneys to clear out waste. Along with this, pure water also keeps a check on the blood pressure of our body..</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>
        
        <div class="image">
            <img src="images/a2.jpg" alt="">
        </div>

    <div class="flex">

        <div class="image">
            <img src="images/a3.jpg" alt="">
        </div>

        <div class="content">
            <h3>who we are?</h3>
            <p>KENT, a brainchild of Dr. Mahesh Gupta, has revolutionized the water purifier industry. Watch the astonishing journey of Dr. Mahesh Gupta and KENT RO towards becoming a leading brand.</p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/pic-1.png" alt="">
            <p>Great quality filter. Does what it’s supposed to do. Easy to use.
Cons: Too expensive. Doesn’t even last a month.
Conclusion: If you want to use this pitcher with quality filtration...you have to use these filters and pay the price..</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Nikhil Bhosale</h3>
        </div>

        <div class="box">
            <img src="images/pic-2.png" alt="">
            <p>Overall good product, Suits in everyone's budget with latest technology inbuilt. All RO+UV+ UF Purification technology remains same and cost is keep changing because of Brand values. Installation done by professional technicians.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Safee Shaikh</h3>
        </div>

        <div class="box">
            <img src="images/pic-3.png" alt="">
            <p>Best product
More better is the guy who had came to installation
Giving proper demo of machine how to use also show water level which was perfect for every user.Great quality filter.Easy to use. Cons: Too expensive. </p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Ranjit Bobade</h3>
        </div>

        <div class="box">
            <img src="images/pic-4.png" alt="">
            <p>This is honest review. After analysing and spending so much time online apps. It was amazing product in this price range. I am using against the Cauvery water, Delivery was very fast and installation little bit delayed because DC SMPS replacement.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Payal Jagtap</h3>
        </div>

        <div class="box">
            <img src="images/pic-1.png" alt="">
            <p>Nice product in this range. I am writing after three months of use .water quality is good . Taste is awesome. After sale service is super fast. The service engineer behaved politely and demonstrated well . I recommend all to purchase it .</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Cristiano Ronaldo</h3>
        </div>

        <div class="box">
            <img src="images/pic-2.png" alt="">
            <p>Executive who did Installation and demo was very good and was done very quickly.. explained everything clearly and the overall service was more satisfactory than expected.I recommend all to purchase it.Nice product in this range.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Disha patani</h3>
        </div>

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>