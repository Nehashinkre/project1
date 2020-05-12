<?php
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$gender = $_POST['gender'];
$city=$_POST['city'];
$state=$_POST['state'];

$Zip = $_POST['Zip'];
// $phoneCode = $_POST['phoneCode'];
// $phone = $_POST['phone'];
$email=$_POST['email'];
$fieldofinterest=$_POST['fieldofinterest'];
$DETAILS=$_POST['DETAILS'];

if (!empty($firstname) || !empty($lastname) || !empty($gender) || !empty($city) || !empty($state) || !empty($Zip)|| !empty($email) || !empty($fieldofinterest) ||!empty($DETAILS)) {
    $host = "localhost";
    $dbfirstname = "root";
    $dblastname = "";
    $dbname = "quotation";
    //create connection
    $conn = new mysqli($host, $dbfirstname, $dblastname, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $SELECT = "SELECT email From formoutput Where email = ? Limit 1";
     $INSERT = "INSERT Into formoutput (firstname, lastname, gender, email, state, city,Zip,fieldofinterest,DETAILS) values(?, ?, ?, ?, ?, ?,?,?,?)";
     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $email);
     $stmt->execute();
     $stmt->bind_result($email);
     $stmt->store_result();
     $rnum = $stmt->num_rows;
     if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("ssssssiss", $firstname, $lastname, $gender, $email, $city, $state,$Zip,$fieldofinterest,$DETAILS);
      $stmt->execute();
      echo  " <b>New record inserted sucessfully ,we shall contact you through the information provided for further clarification<br>";
      echo "thank you";
     } else {
      echo "Someone already register using this email";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required";
 die();
}
?>