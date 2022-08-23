<?php
session_start();
$con = mysqli_connect("localhost","root","","cms");

if(isset($_POST['save_date']))
{
    $start_loc = $_POST['sl'];
    $end_loc= $_POST['el'];
    
    $dates = date('Y-m-d', strtotime($_POST['dateofbirth']));
    $phone = $_POST['phone'];
    $model = $_POST['vm'];
    

    $query = "INSERT INTO location (start_loc,end_loc,dates,phone,model) VALUES ('$start_loc','$end_loc','$dates','$phone','$model')";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Date values Inserted";
        header("Location: index.php");
    }
    else
    {
        $_SESSION['status'] = "Date values Inserting Failed";
        header("Location: index.php");
    }
}
?>