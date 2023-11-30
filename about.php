<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();} for php 5.4 and above

if(session_id() == '' || !isset($_SESSION)){session_start();}


?>

<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About Us || Pritech Indonesia</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
	<style>
  body {
   background-image : url("images/about.jpg")
  }
</style>
  </head>
  <body>
    <nav class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1><a href="index.php">Pritech Indonesia</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
      </ul>

      <section class="top-bar-section">
      <!-- Right Nav Section -->
       <ul class="right">
          <li class="active"><a href="about.php">About</a></li>
          <li><a href="products.php">Services</a></li>
          <li><a href="cart.php">Request Order</a></li>
          <li><a href="orders.php">History Order</a></li>
          <li><a href="contact.php">Contact</a></li>
          <?php
    
          if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
          }
          else{
            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li><a href="register.php">Register</a></li>';
          }
          ?>
        </ul>
      </section>
    </nav>




    <div class="row" style="margin-top:30px;" align="center">
      <div class="small-12">
        <p>Pritech Indonesia is a company that provides application and website development services</p>
		<p>Our goal is to improve business with better technology that can make life easier. We build great solutions and services to solve your business problems.</p>

        <footer>
           <p style="text-align:center; font-size:0.8em;">&copy; Pritech Indonesia. All Rights Reserved.</p>
        </footer>

      </div>
    </div>




    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
