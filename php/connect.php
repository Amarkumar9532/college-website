<?php
$name=$_POST['name'];
$email=$_POST['email'];
$select_course=$_POST['select_course'];
$phone=$_POST['phone'];
$select_batch=$_POST['select_batch'];
$message=$_POST['message'];
 $con=mysqli_connect('localhost','root');
mysqli_select_db($con,'db');

$q="INSERT INTO admission (name,email,select_course,phone,select_batch,message) values('$name','$email','$select_course',$phone,'$select_batch','$message')";
 $status=mysqli_query($con,$q);
mysqli_close($con);
 ?>
    <?php 
            if($status==1) 
                echo " Your Record sucessfully"; 
            else 
                echo "Your Record  not sucessfully"; 
            ?>
