<?php
//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}
include 'config.php';
?>

<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order || Pritech Indonesia</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
		  <style>
  body {
   background-image : url("images/cart.jpg")
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
          <li><a href="about.php">About</a></li>
          <li><a href="products.php">Services</a></li>
          <li class="active"><a href="cart.php">Request Order</a></li>
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




    <div class="row" style="margin-top:10px;">
      <div class="large-12">
        <?php

          echo '<p><h3>Your Request Order</h3></p>';

          if(isset($_SESSION['cart'])) {

            $total = 0;
            echo '<table>';
            echo '<tr>';
            echo '<th>Code</th>';
            echo '<th>Services</th>';
            echo '<th>Estimated Cost</th>';
            echo '</tr>';
            foreach($_SESSION['cart'] as $product_id => $quantity) {

            $result = $mysqli->query("SELECT product_code, product_name, product_desc, qty, price FROM products WHERE id = ".$product_id);


            if($result){

              while($obj = $result->fetch_object()) {
                $cost = $obj->price * $quantity; //work out the line cost
                $total = $total + $cost; //add to the total cost

                echo '<tr>';
                echo '<td>'.$obj->product_code.'</td>';
                echo '<td>'.$obj->product_name.'</td>';
                echo '<td>'.$currency.$cost.'</td>';
                echo '</tr>';
              }
            }

          }



          echo '<tr>';
          echo '<td colspan="2" align="right">Total</td>';
          echo '<td>'.$currency.$total.'</td>';
          echo '</tr>';

          echo '<tr>';
          echo '<td colspan="3" align="right"><a href="update-cart.php?action=empty" class="button alert">Empty Order</a>&nbsp;<a href="products.php" class="button [secondary success alert]">Back to Services</a>';
          if(isset($_SESSION['username'])) {
            echo '<a href="orders-update.php"><button style="float:right;">Send Submit Order & Request Meet</button></a>';
          }

          else {
            echo '<a href="login.php"><button style="float:right;">Login</button></a>';
          }

          echo '</td>';

          echo '</tr>';
          echo '</table>';
        }

        else {
          echo "Your service request is empty, let's choose our services.";
        }





          echo '</div>';
          echo '</div>';
          ?>






    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
