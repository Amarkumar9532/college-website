<?php
$name=$_POST['name'];
$fname=$_POST['fname'];
$mname=$_POST['mname'];
$email=$_POST['email'];
$nation=$_POST['nation'];
$admission_number=$_POST['admission_number'];
$dob=$_POST['dob'];
$select_course=$_POST['select_course'];
$catagory=$_POST['catagory'];
$phone=$_POST['phone'];
$gender=$_POST['gender'];
$select_batch=$_POST['select_batch'];
$room=$_POST['room'];
$Local_address=$_POST['Local_address'];
$Permanat_address=$_POST['Permanat_address'];
 $con=mysqli_connect('localhost','root');
mysqli_select_db($con,'db');

$q="INSERT INTO admissioncourse
(name,fname,mname,email,nation,admission_number,dob,select_course,catagory,phone,gender,select_batch,room,Local_address,Permanat_address) 
values('$name','$fname','$mname','$email','$nation',$admission_number,'$dob','$select_course','$catagory',$phone,'$gender','$select_batch','$room','$Local_address','$Permanat_address')";
 $status=mysqli_query($con,$q);
mysqli_close($con);
 ?>
    <?php 
            if($status==1) 
                echo " Your Record sucessfully"; 
            else 
                echo "Your Record  not sucessfully"; 
            ?>
