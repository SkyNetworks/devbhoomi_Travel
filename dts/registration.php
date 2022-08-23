<?php  include "includes/header.php"; ?>

<!-- Navigation -->
<?php  include "includes/navigation.php"; ?>

<?php
if(isset($_POST['submit'])){
$username = $_POST['username'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$phone = $_POST['phone'];
$password = $_POST['password'];

    if(!empty($username) && !empty($phone) && !empty($password)){
        $username = mysqli_real_escape_string($connection,$username);
        $firstname = mysqli_real_escape_string($connection,$firstname);
        $lastname = mysqli_real_escape_string($connection,$lastname);
        $phone = mysqli_real_escape_string($connection,$phone);
        $password = mysqli_real_escape_string($connection,$password);

        $password = password_hash($password, PASSWORD_BCRYPT, array('cost' => 12)); 

       

        $query = "INSERT INTO users (user_role,username,user_firstname,user_lastname,phone,user_password) ";
        $query .= "VALUES( 'subscriber',?,?,?,?,?)";
        $stmt = mysqli_prepare($connection,$query);
        mysqli_stmt_bind_param($stmt,"sssss",$username,$firstname,$lastname,$phone,$password);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
        if(!$stmt){
            die("QUERY FAILED" . mysqli_error($connection) . ' ' . mysqli_errno($connection));
        }

        $message = "Your Registration has been submitted";

    }else{
        $message = "fields cannot be empty";
    }

}else{
    $message = "";
}


?>
   
 
<!-- Page Content -->
<div class="container">
    <section id="login">
        <div class="row justify-content-center align-items-center">
            <div class="col-sm-5 col-sm-offset-5">
                <div class="form-wrap">
	    		    <h3 class="text-center mt-3 mb-3"><i class="fas fa-portrait fa-3x"></i></h3>
                        <form role="form" action="registration.php" method="post" id="login-form" autocomplete="off">
                            <h6><?php echo $message; ?></h6>
                            <div class="form-group">
                                <label for="username" class="sr-only">username</label>
                                <input type="text" name="username" id="username" class="form-control" placeholder="Enter Desired Username">
                            </div>
                            <div class="form-group">
                                <label for="firstname" class="sr-only">Firstname</label>
                                <input type="text" name="firstname" id="firstname" class="form-control" placeholder="Enter Your Firstname">
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="sr-only">Lastname</label>
                                <input type="text" name="lastname" id="lastname" class="form-control" placeholder="Enter Your Lastname">
                            </div>
                            <div class="form-group">
                                <label for="phone" class="sr-only">phone</label>
                                <input type="text" name="phone" id="phone" class="form-control" placeholder="9876543210">
                            </div>
                            <div class="form-group">
                                <label for="password" class="sr-only">Password</label>
                                <input type="password" name="password" id="key" class="form-control" placeholder="Password">
                            </div>
                            <input type="submit" name="submit" id="btn-login" class="btn btn-secondary btn-lg btn-block" value="Register">
                        </form>
                </div>
            </div> <!-- /.col-sm-5 -->
        </div> <!-- /.row -->
    </section>

<hr>

<?php include "includes/footer.php";?>

</div> <!-- /.container -->
