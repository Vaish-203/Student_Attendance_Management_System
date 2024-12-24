<?php
$host = "localhost";
$user = "root";
$password = "";
$db_sms = "sms";
$db_attendance = "attendancemsystem1";

// Connect to the first database
$con_sms = mysqli_connect($host, $user, $password, $db_sms) or die("Could not connect to sms database");
// Connect to the second database
$con_attendance = mysqli_connect($host, $user, $password, $db_attendance) or die("Could not connect to attendance database");
?>
