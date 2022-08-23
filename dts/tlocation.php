<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/record.css">
</head>
<body style="background: lightblue">





<div class="container">
  <form action="" method="POST">
  <div class="row">
    <div class="col-25">
      <label id="text" for="start">To</label>
    </div>
    <div class="col-75">
      <input type="text" id="start" name="start" placeholder="Starting  point.." required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label id="text"for="end">From</label>
    </div>
    <div class="col-75">
      <input type="text" id="end" name="end" placeholder="Destination.."required>
    </div>
    
    <div class="row">
    
      <label id="text" for="date" name="date"><h3>Select time :</h3></label>
      
      
      <input
        type="datetime-local"
        id="journey-time"
        name="dates">
          </div>
       <div class="row">
    <div class="col-25">
      <label id="text" for="type">Type of vehicle</label>
    </div>
    <div class="col-75">
      <select id="type" name="type">
        <option value="1">Tow Wheeler</option>
        <option value="2">Four Wheeler</option>
        <option value="3">Loader</option>
       
      </select>
    </div>
  </div>
     

  </div>
  <div class="row">
    <div class="col-25">
      <label id="text" for="seat">Available Seats</label>
    </div>
    <div class="col-75">
      <select id="seat" name="seat">
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
        <option value="4">Four</option>
      </select>
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label id="text" for="model">vehicle model</label>
    </div>
    <div class="col-75">
      <input type="text" id="model" name="model" placeholder="Honda.../jeep.../Ford.../BMW....."required>
    </div>
  </div>
  
  
  <div class="row">
    <div class="col-25">
      <label id="text" for="plate">Number Plate</label>
    </div>
    <div class="col-75">
      <input type="text" id="plate" name="plate" placeholder="AB06CD1234"required>
    </div>
  </div>
  
  
  
  <div class="row">
    <div class="col-25">
      <label id="text" for="fname">CONTACT NO</label>
    </div>
    <div class="col-75">
      <input type="text" id="start" name="contact" placeholder="...."required>
    </div>
  </div>
  
 
  <br>
  <div class="row">
    <input type="Submit" value="Submit" name="submit">
  </div>
  </form>
</div>

</body>
</html>



<!-- php code -->

<?php
//include 'includes/db.php';
 include "includes/header.php"; ?>

<!-- Navigation -->
<?php  include "includes/navigation.php"; 
if (!$connection) {
  die("Connection failed: " . mysqli_connect_error());
}
if(isset($_POST['submit'])){
    $start_loc = $_POST['start'];
    $end_loc = $_POST['end'];
    //$date = $_POST['dates'];
    $dates = date('d-m-y');
    $vehicle_type = $_POST['type'];
    $seats = $_POST['seat'];
    $model = $_POST['model'];
    $vc_number= $_POST['plate'];
    $phone = $_POST['contact'];
   $re ="INSERT INTO location( start_loc, end_loc,dates, vehicle_type, seats, model, vc_number, phone);
   VALUES ($start_loc,$end_loc,$date, $vehicle_type,$seats, $model,$vc_number,$phone)";

//$con= mysqli_query($connection,$re);
//mysqli_stmt_execute($re);
//mysqli_stmt_close($re);
//$create_post_query = mysqli_error($connection, $ress);


   
  






//mysqli_close($conn);
  }
?>
